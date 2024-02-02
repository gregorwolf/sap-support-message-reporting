const cds = require("@sap/cds");
const LOG = cds.log("task-load-data");

async function loadDataFromMock() {
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

  const reportingService = await cds.connect.to("ReportingService");
  const { MessageHeaderSet } = reportingService.entities;
  LOG.info("Connected to ReportingService");
  // Check that the db connection is working
  const messageHeaderSetResult = await SELECT("Pointer")
    .from(MessageHeaderSet)
    .limit(1);
  LOG.info("messageHeaderSetResult", messageHeaderSetResult);
  // Load the data from the mock
  const loadDataFromMockResult = await reportingService.send(
    "loadDataFromMock"
  );
  LOG.info("loadDataFromMockResult", loadDataFromMockResult);
  await cds.exit();
  return;
}

loadDataFromMock();
