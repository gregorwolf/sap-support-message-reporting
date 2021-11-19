const cds = require("@sap/cds");
const { cleanObject } = require("./helper");
const thisApplication = "sap-support-message-reporting";
const DEBUG = cds.debug(thisApplication);

// Does need destination service
// const cdse = require("cdse")

module.exports = cds.service.impl(async (srv) => {
  const incidentws = await cds.connect.to("incidentws");
  const { MessageHeaderSet, MessageAlogSet, MessageContactsSet } =
    incidentws.entities;

  const db = await cds.connect.to("db");
  const {
    MessageHeaderSet: dbMessageHeaderSet,
    MessageAlogSet: dbMessageAlogSet,
    MessageContactsSet: dbMessageContactsSet,
    PriorityTxtView,
    StatusTxtView,
    StatusView,
    SystemIdView,
  } = db.entities;

  srv.on("READ", "PriorityTxtVH", async (req) => {
    return SELECT.from(PriorityTxtView);
  });

  srv.on("READ", "StatusTxtVH", async (req) => {
    return SELECT.from(StatusTxtView);
  });

  srv.on("READ", "StatusVH", async (req) => {
    return SELECT.from(StatusView);
  });

  srv.on("READ", "SystemIdVH", async (req) => {
    const systemIdVH = await SELECT.from(SystemIdView);
    return systemIdVH;
  });

  srv.on("loadDataFromSAP", async (req) => {
    const axios = require("axios");

    db.run(DELETE.from(dbMessageHeaderSet));
    db.run(DELETE.from(dbMessageAlogSet));
    db.run(DELETE.from(dbMessageContactsSet));

    var cookie = getCookie();
    const instance = axios.create({
      baseURL: "https://launchpad.support.sap.com",
      timeout: 30000,
      headers: { Cookie: cookie },
    });
    const response = await instance.get(
      "/services/odata/incidentws/MessageHeaderSet?$inlinecount=allpages&$filter=((Source%20eq%20%27ALL%27)and%20(Status%20eq%20%273%27%20or%20Status%20eq%20%275%27%20or%20Status%20eq%20%27N%27%20or%20Status%20eq%20%27M%27%20or%20Status%20eq%20%27R%27%20or%20Status%20eq%20%27S%27%20or%20Status%20eq%20%27C%27%20or%20Status%20eq%20%271%27)%20and%20(LastUpdate%20eq%20%27ALL%27))&$skip=0&$top=10&$format=json"
    );
    if (response.headers["com.sap.cloud.security.login"] === "login-request") {
      const error = "Please update the cookie in your default-env.json file";
      console.error(error);
      throw { message: error };
    } else {
      response.data.d.results.forEach(cleanObject);
      const responseMessageHeaderSet = response.data.d.results;
      DEBUG &&
        DEBUG(
          `Entries in the MessageHeaderSet ${responseMessageHeaderSet.length}`
        );
      // Store them locally
      const resultsetMessageHeaderSet = await db.run([
        INSERT(responseMessageHeaderSet).into(dbMessageHeaderSet),
      ]);
      DEBUG &&
        DEBUG(
          `Added entities of type MessageHeaderSet ${resultsetMessageHeaderSet[0].affectedRows}`
        );
      for (let index = 0; index < responseMessageHeaderSet.length; index++) {
        let value = responseMessageHeaderSet[index];
        DEBUG && DEBUG(`Read Pointer ${value.Pointer}`);
        // Read Action Log
        let axiosResponseMessageAlogSet = await instance.get(
          `/services/odata/incidentws/MessageAlogSet?$filter=(Pointer eq '${value.Pointer}')&$format=json`
        );
        axiosResponseMessageAlogSet.data.d.results.forEach(cleanObject);
        let responseMessageAlogSet = axiosResponseMessageAlogSet.data.d.results;
        DEBUG &&
          DEBUG(
            `${responseMessageAlogSet.length} entries for Pointer ${value.Pointer}`
          );
        if (responseMessageAlogSet.length > 0) {
          let resultsetMessageAlogSet = await db.run([
            INSERT(responseMessageAlogSet).into(dbMessageAlogSet),
          ]);
          DEBUG &&
            DEBUG(
              `Added entities of type MessageAlogSet ${resultsetMessageAlogSet[0].affectedRows}`
            );
        }
        // Read Contacts
        let axiosResponseMessageContactsSet = await instance.get(
          `/services/odata/incidentws/MessageContactsSet?$filter=(Pointer eq '${value.Pointer}')&$format=json`
        );
        axiosResponseMessageContactsSet.data.d.results.forEach(cleanObject);
        let responseMessageContactsSet =
          axiosResponseMessageContactsSet.data.d.results;
        DEBUG &&
          DEBUG(
            `${responseMessageContactsSet.length} entries for Pointer ${value.Pointer}`
          );
        if (responseMessageContactsSet.length > 0) {
          let resultsetMessageContactsSet = await db.run([
            INSERT(responseMessageContactsSet).into(dbMessageContactsSet),
          ]);
          DEBUG &&
            DEBUG(
              `Added entities of type MessageContactsSet ${resultsetMessageContactsSet[0].affectedRows}`
            );
        }
      }
    }
  });

  srv.on("loadDataFromMock", async (req) => {
    db.run(DELETE.from(dbMessageHeaderSet));
    db.run(DELETE.from(dbMessageAlogSet));
    // TODO get count to allow packetized requets
    /*
    const cqnCountMessageHeaderSet = SELECT.from(MessageHeaderSet) // How To do a count with CQN?
    const rows = await tx.run(cqnCountMessageHeaderSet)
    DEBUG && DEBUG(`MessageHeaderSet has ${rows} rows`);
    */
    // Read Incidents from OSS
    const cqnMessageHeaderSet = SELECT.from(MessageHeaderSet); // .limit(2)
    // TODO: Add cookie to this request
    const responseMessageHeaderSet = await incidentws.run(cqnMessageHeaderSet);
    DEBUG &&
      DEBUG(
        `Entries in the MessageHeaderSet ${responseMessageHeaderSet.length}`
      );
    // Store them locally
    const resultsetMessageHeaderSet = await db.run([
      INSERT(responseMessageHeaderSet).into(dbMessageHeaderSet),
    ]);
    DEBUG &&
      DEBUG(
        `Added entities of type MessageHeaderSet ${resultsetMessageHeaderSet[0].affectedRows}`
      );
    for (let index = 0; index < responseMessageHeaderSet.length; index++) {
      let value = responseMessageHeaderSet[index];
      DEBUG && DEBUG(`Read Pointer ${value.Pointer}`);
      // Read Action Log
      let cqnMessageAlogSet = SELECT.from(MessageAlogSet).where(
        "Pointer =",
        value.Pointer
      );
      let responseMessageAlogSet = await incidentws.run(cqnMessageAlogSet);
      DEBUG &&
        DEBUG(
          `${responseMessageAlogSet.length} entries for Pointer ${value.Pointer}`
        );
      if (responseMessageAlogSet.length > 0) {
        let resultsetMessageAlogSet = await db.run([
          INSERT(responseMessageAlogSet).into(dbMessageAlogSet),
        ]);
        DEBUG &&
          DEBUG(
            `Added entities of type MessageAlogSet ${resultsetMessageAlogSet[0].affectedRows}`
          );
      }
      // Read Contacts
      let cqnMessageContactsSet = SELECT.from(MessageContactsSet).where(
        "Pointer =",
        value.Pointer
      );
      let responseMessageContactsSet = await incidentws.run(
        cqnMessageContactsSet
      );
      DEBUG &&
        DEBUG(
          `${responseMessageContactsSet.length} entries for Pointer ${value.Pointer}`
        );
      if (responseMessageContactsSet.length > 0) {
        let resultsetMessageContactsSet = await db.run([
          INSERT(responseMessageContactsSet).into(dbMessageContactsSet),
        ]);
        DEBUG &&
          DEBUG(
            `Added entities of type MessageContactsSet ${resultsetMessageContactsSet[0].affectedRows}`
          );
      }
    }
  });
});

function getCookie() {
  var cookie = "";
  if (process.env.OSS_COOKIE) {
    const OSS_COOKIE = JSON.parse(process.env.OSS_COOKIE);
    if (OSS_COOKIE.cookie) {
      cookie = OSS_COOKIE.cookie;
    }
  } else {
    console.error("OSS_COOKIE not set");
  }
  return cookie;
}
