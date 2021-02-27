const cds = require("@sap/cds")
const { cleanObject } = require("./helper")

const thisApplication = "sap-support-message-reporting";
const DEBUG = cds.debug(thisApplication);

const MessageHeaderSetData = require("./data/MessageHeaderSet.json");
const MessageAlogSetData = require("./data/MessageAlogSet.json")

module.exports = (db) => {
  const {
    MessageHeaderSet,
    MessageAlogSet
  } = db.entities("incidentws");

  const entityToData = new Map([
    [MessageHeaderSet, MessageHeaderSetData],
    [MessageAlogSet, MessageAlogSetData]
  ]);

  entityToData.forEach((value, key) => {
    // clean up data object of unnecessary fields
    value.d.results.forEach(cleanObject);
    // write data to db
    DEBUG && DEBUG(`Write ${value.d.results.length} entries into ${key.name}`);
    cds.run([INSERT.into(key).rows(value.d.results)]);
  });
};
