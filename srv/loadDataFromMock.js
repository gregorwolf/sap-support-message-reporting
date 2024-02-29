const cds = require("@sap/cds");
const LOG = cds.log("task-load-data");
const capStartup = require("./cap-startup");

async function loadDataFromMock() {
  await capStartup();

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
