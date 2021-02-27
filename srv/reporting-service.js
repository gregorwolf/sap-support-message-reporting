const cds = require("@sap/cds")
const { cleanObject } = require("./helper")
const thisApplication = "sap-support-message-reporting";
const DEBUG = cds.debug(thisApplication);

// Does need destination service
// const cdse = require("cdse")

module.exports = cds.service.impl(async (srv) =>  {
  const incidentws = await cds.connect.to("incidentws")
  const { MessageHeaderSet, MessageAlogSet } = incidentws.entities

  const db = await cds.connect.to("db")
  const { MessageHeaderSet: dbMessageHeaderSet, MessageAlogSet: dbMessageAlogSet } = db.entities

  srv.on("loadDataAxios", async (req) => {
    const axios = require('axios');

    db.run(DELETE.from(dbMessageHeaderSet))
    db.run(DELETE.from(dbMessageAlogSet))

    var cookie = getCookie()
    const instance = axios.create({
      baseURL: 'https://launchpad.support.sap.com',
      timeout: 30000,
      headers: {'Cookie': cookie}
    })
    const response = await instance.get('/services/odata/incidentws/MessageHeaderSet?$inlinecount=allpages&$filter=((Source%20eq%20%27ALL%27)and%20(Status%20eq%20%273%27%20or%20Status%20eq%20%275%27%20or%20Status%20eq%20%27N%27%20or%20Status%20eq%20%27M%27%20or%20Status%20eq%20%27R%27%20or%20Status%20eq%20%27S%27%20or%20Status%20eq%20%27C%27%20or%20Status%20eq%20%271%27)%20and%20(LastUpdate%20eq%20%27ALL%27))&$skip=0&$top=10&$format=json')
    response.data.d.results.forEach(cleanObject);
    const responseMessageHeaderSet = response.data.d.results
    DEBUG && DEBUG(`Entries in the MessageHeaderSet ${responseMessageHeaderSet.length}`);
    // Store them locally
    const resultsetMessageHeaderSet = await db.run([INSERT.into(dbMessageHeaderSet).rows(responseMessageHeaderSet)])
    DEBUG && DEBUG(`Added entities of type MessageHeaderSet ${resultsetMessageHeaderSet[0].affectedRows}`);
    for (let index = 0; index < responseMessageHeaderSet.length; index++) {
      let value = responseMessageHeaderSet[index]
      DEBUG && DEBUG(`Read Pointer ${value.Pointer}`);
      let axiosResponseMessageAlogSet = await instance.get(`/services/odata/incidentws/MessageAlogSet?$filter=(Pointer eq '${value.Pointer}')&$format=json`)
      axiosResponseMessageAlogSet.data.d.results.forEach(cleanObject);
      let responseMessageAlogSet = axiosResponseMessageAlogSet.data.d.results
      DEBUG && DEBUG(`${responseMessageAlogSet.length} entries for Pointer ${value.Pointer}`);
      if(responseMessageAlogSet.length > 0) {
        let resultsetMessageAlogSet = await db.run([INSERT.into(dbMessageAlogSet).rows(responseMessageAlogSet)])
        DEBUG && DEBUG(`Added entities of type MessageAlogSet ${resultsetMessageAlogSet[0].affectedRows}`);
      }
    }
  })

  srv.on("loadData", async (req) => {
    db.run(DELETE.from(dbMessageHeaderSet))
    db.run(DELETE.from(dbMessageAlogSet))
    // TODO get count to allow packetized requets
    /*
    const cqnCountMessageHeaderSet = SELECT.from(MessageHeaderSet) // How To do a count with CQN?
    const rows = await tx.run(cqnCountMessageHeaderSet)
    DEBUG && DEBUG(`MessageHeaderSet has ${rows} rows`);
    */
    // Read Incidents from OSS
    const cqnMessageHeaderSet = SELECT.from(MessageHeaderSet) // .limit(2)
    // TODO: Add cookie to this request
    const responseMessageHeaderSet = await incidentws.run(cqnMessageHeaderSet)
    DEBUG && DEBUG(`Entries in the MessageHeaderSet ${responseMessageHeaderSet.length}`);
    // Store them locally
    const resultsetMessageHeaderSet = await db.run([INSERT.into(dbMessageHeaderSet).rows(responseMessageHeaderSet)])
    DEBUG && DEBUG(`${responseMessageAlogSet.length} entries for Pointer ${value.Pointer}`);
    for (let index = 0; index < responseMessageHeaderSet.length; index++) {
      let value = responseMessageHeaderSet[index]
      DEBUG && DEBUG(`Read Pointer ${value.Pointer}`);
      let cqnMessageAlogSet = SELECT.from(MessageAlogSet).where('Pointer =', value.Pointer)
      let responseMessageAlogSet = await incidentws.run(cqnMessageAlogSet)
      DEBUG && DEBUG(`${responseMessageAlogSet.length} entries for Pointer ${value.Pointer}`);
      if(responseMessageAlogSet.length > 0) {
        let resultsetMessageAlogSet = await db.run([INSERT.into(dbMessageAlogSet).rows(responseMessageAlogSet)])
        DEBUG && DEBUG(`Added entities of type MessageAlogSet ${resultsetMessageAlogSet[0].affectedRows}`);
      }
    }
  })
})

function getCookie() {
  var cookie = "";
  if (process.env.OSS_COOKIE) {
    const OSS_COOKIE = JSON.parse(process.env.OSS_COOKIE)
    if (OSS_COOKIE.cookie) {
      cookie = OSS_COOKIE.cookie
    }
  } else {
    console.error("OSS_COOKIE not set")
  }
  return cookie
}
