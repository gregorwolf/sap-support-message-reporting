// Node Module: cap-startup.js that exports a function to run the CAP model and service initialization
const cds = require("@sap/cds");

module.exports = async function capStartup() {
  const app = cds.app;
  cds.emit("bootstrap", app);

  // load model from all sources
  const csn = await cds.load("*");
  cds.model = cds.compile.for.nodejs(csn);
  cds.emit("loaded", cds.model);

  // connect to prominent required services
  if (cds.requires.db) cds.db = await cds.connect.to("db");
  if (cds.requires.messaging) await cds.connect.to("messaging");

  // serve own services as declared in model
  await cds.serve("all").from(csn).in(app);
  await cds.emit("served", cds.services);
}
