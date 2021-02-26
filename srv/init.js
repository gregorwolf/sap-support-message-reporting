const cds = require("@sap/cds");
const { format } = require("date-fns");

const thisApplication = "sap-support-message-report";
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

function cleanObject(obj) {
  Object.keys(obj).forEach((key) => {
    const value = obj[key];
    if (typeof value === "object") {
      delete obj[key];
    } else if (typeof value === "string") {
      // match the common sap odata date format like "/Date(1603065600000)/"
      // also matches the more uncommon "/Date(253402300799000+0000)/". But this will only work correctly for utc! (+0000)
      const matchDate = value.match(/\/Date\((-*\d+)\+*\d+\)\//);
      if (matchDate) {
        obj[key] = format(new Date(Number(matchDate[1])), "yyyy-MM-dd");
      }
      // match the sap odata time format like "PT09H50M58S"
      const matchTime = value.match(/^PT(\d\d)H(\d\d)M(\d\d)S/);
      if (matchTime) {
        obj[key] = matchTime[1] + ":" + matchTime[2] + ":" + matchTime[3] + ".00";
      }
    }
  });
}