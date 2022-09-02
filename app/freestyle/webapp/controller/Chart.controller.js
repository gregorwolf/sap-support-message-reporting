sap.ui.define(
  ["sap/ui/core/mvc/Controller"],
  /**
   * @param {typeof sap.ui.core.mvc.Controller} Controller
   */
  function (Controller) {
    "use strict";

    return Controller.extend("freestyle.controller.Chart", {
      onInit: function () {},
      onClickHandler: function (oEvent) {
        var clickedData = oEvent.getParameter("data")[0].data;
        // do something
        console.log(clickedData);
        var oRouter = this.getOwnerComponent().getRouter();
        oRouter.navTo("List", { Status: clickedData.Status });
      },
    });
  }
);
