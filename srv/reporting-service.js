const cds = require("@sap/cds")
const thisApplication = "sap-support-message-reporting";
const DEBUG = cds.debug(thisApplication);

// Does need destination service
// const cdse = require("cdse")

module.exports = cds.service.impl(async (srv) =>  {
  const incidentws = await cds.connect.to("incidentws")
  const { MessageHeaderSet, MessageAlogSet } = incidentws.entities

  const db = await cds.connect.to("db")
  const { MessageHeaderSet: dbMessageHeaderSet, MessageAlogSet: dbMessageAlogSet } = db.entities

  srv.on("loadData", async (req) => {
    const dbtx = db.transaction(req)
    const exttx = incidentws.transaction(req)

    var cookie = getCookie()
    dbtx.run(DELETE.from(dbMessageHeaderSet))
    dbtx.run(DELETE.from(dbMessageAlogSet))
    // TODO get count to allow packetized requets
    /*
    const cqnCountMessageHeaderSet = SELECT.from(MessageHeaderSet) // How To do a count with CQN?
    const rows = await tx.run(cqnCountMessageHeaderSet)
    DEBUG && DEBUG(`MessageHeaderSet has ${rows} rows`);
    */
    // Read Incidents from OSS
    const cqnMessageHeaderSet = SELECT.from(MessageHeaderSet) // .limit(2)
    // TODO: Add cookie to this request
    const responseMessageHeaderSet = await exttx.run(cqnMessageHeaderSet)
    DEBUG && DEBUG(`Entries in the MessageHeaderSet ${responseMessageHeaderSet.length}`);
    // Store them locally
    const resultsetMessageHeaderSet = await dbtx.run([INSERT.into(dbMessageHeaderSet).rows(responseMessageHeaderSet)])
    responseMessageHeaderSet.forEach(async (value) => {
      DEBUG && DEBUG(`Read Pointer ${value.Pointer}`);
      const cqnMessageAlogSet = SELECT.from(MessageAlogSet).where('Pointer =', value.Pointer)
      const responseMessageAlogSet = await exttx.run(cqnMessageAlogSet)
      DEBUG && DEBUG(`${responseMessageAlogSet.length} entries for Pointer ${value.Pointer}`);
      if(responseMessageAlogSet.length > 0) {
        const resultsetMessageAlogSet = await dbtx.run([INSERT.into(dbMessageAlogSet).rows(responseMessageAlogSet)])
      }
    })

    // console.log(resultset);
  });
});

function getCookie() {
  var cookie = "";
  if (process.env.VCAP_APPLICATION) {
    const VCAP_APPLICATION = JSON.parse(process.env.VCAP_APPLICATION);
    if (VCAP_APPLICATION.cookie) {
      cookie = VCAP_APPLICATION.cookie;
    }
  } else {
    console.error("VCAP_APPLICATION not set");
  }
  return cookie;
}
