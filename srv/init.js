const cds = require("@sap/cds");
const { cleanObject } = require("./helper");

const thisApplication = "sap-support-message-reporting";
const DEBUG = cds.debug(thisApplication);

const MessageHeaderSetData = require("./data/MessageHeaderSet.json");
const MessageAlogSetData = require("./data/MessageAlogSet.json");
const MessageContactsSetData = require("./data/MessageContactsSet.json");

module.exports = (db) => {
  const { MessageHeaderSet, MessageAlogSet, MessageContactsSet } =
    db.entities("incidentws");

  const entityToData = new Map([
    [MessageHeaderSet, MessageHeaderSetData],
    [MessageAlogSet, MessageAlogSetData],
    [MessageContactsSet, MessageContactsSetData],
  ]);

  entityToData.forEach((value, key) => {
    // clean up data object of unnecessary fields
    value.d.results.forEach(cleanObject);
    // write data to db
    DEBUG && DEBUG(`Write ${value.d.results.length} entries into ${key.name}`);
    cds.run([INSERT(value.d.results).into(key)]);
  });
};
