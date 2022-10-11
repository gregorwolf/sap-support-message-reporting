"use strict";
const port = process.env.PORT || 4004;

const cds = require("@sap/cds");
const proxy = require("@sap/cds-odata-v2-adapter-proxy");

cds.on("bootstrap", (app) =>
  app.use(
    proxy({
      path: "services/odata",
      port: port,
    })
  )
);

if (process.env.NODE_ENV !== "production") {
  const { cds_launchpad_plugin } = require("cds-launchpad-plugin");

  // Enable launchpad plugin
  cds.once("bootstrap", (app) => {
    const handler = new cds_launchpad_plugin();
    app.use(handler.setup({ theme: "sap_horizon", version: "1.99.0" }));
  });
}

module.exports = cds.server;
