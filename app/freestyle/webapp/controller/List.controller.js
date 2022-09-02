sap.ui.define(["sap/ui/core/mvc/Controller"], function (Controller) {
  "use strict";

  return Controller.extend("freestyle.controller.List", {
    onInit: function () {
      var oRouter = this.getOwnerComponent().getRouter();
      oRouter
        .getRoute("List")
        .attachPatternMatched(this._onObjectMatched, this);
    },
    _onObjectMatched: function (oEvent) {
      if (oEvent.mParameters?.arguments?.Status) {
        var oSmartFilterBar = this.getView().byId("smartFilterBar");
        var oDefaultFilter = {
          Status: {
            items: [
              {
                key: oEvent.mParameters.arguments.Status,
                text: oEvent.mParameters.arguments.Status,
              },
            ],
            ranges: [],
            value: null,
          },
        };
        oSmartFilterBar.setFilterData(oDefaultFilter);
      }
    },
  });
});
