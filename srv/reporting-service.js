const cds = require("@sap/cds")
// Does need destination service
// const cdse = require("cdse")

module.exports = cds.service.impl(async (srv) =>  {
  const incidentws = await cds.connect.to("incidentws")
  const { MessageHeaderSet, MessageAlogSet } = incidentws.entities

  const db = await cds.connect.to("db")
  const { MessageHeaderSet: dbMessageHeaderSet } = db.entities

  srv.on("loadData", async (req) => {
    const dbtx = db.transaction(req)
    const tx = incidentws.transaction(req)

    var cookie = getCookie()
    // Read Incidents from OSS
    const cqn = SELECT.from(MessageHeaderSet).limit(2)
    // TODO: Add cookie to this request
    const response = await tx.run(cqn)
    // Store them locally
    const resultset = await dbtx.run([INSERT.into(dbMessageHeaderSet).rows(response)])

    console.log(resultset);
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
