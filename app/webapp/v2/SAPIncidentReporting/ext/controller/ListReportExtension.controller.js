sap.ui.controller("v2.SAPIncidentReporting.ext.controller.ListReportExtension", {
  onInit: function () { 
    this.getView().byId("listReport").setProperty("useExportToExcel", true) 
  }
});