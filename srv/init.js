const cds = require("@sap/cds");
const { cleanObject } = require("./helper");

const LOG = cds.log("sap-support-message-reporting");

const MessageHeaderSetData = require("./data/MessageHeaderSet.json");
const MessageAlogSetData = require("./data/MessageAlogSet.json");
const MessageContactsSetData = require("./data/MessageContactsSet.json");

module.exports = async (db) =>  {
  const { MessageHeaderSet, MessageAlogSet, MessageContactsSet } = db.entities(
    "sap.incident.reporting"
  );

  const entityToData = new Map([
    [MessageHeaderSet, MessageHeaderSetData],
    [MessageAlogSet, MessageAlogSetData],
    [MessageContactsSet, MessageContactsSetData],
  ]);

  for (const [key, value] of entityToData.entries()) {
    // clean up data object of unnecessary fields
    value.d.results.forEach(cleanObject);
    // write data to db
    LOG.info(`Write ${value.d.results.length} entries into ${key.name}`);
    await cds.run([INSERT(value.d.results).into(key)]);
  }
};
