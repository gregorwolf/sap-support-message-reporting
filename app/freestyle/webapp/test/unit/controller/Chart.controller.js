/*global QUnit*/

sap.ui.define([
	"freestyle/controller/Chart.controller"
], function (Controller) {
	"use strict";

	QUnit.module("Chart Controller");

	QUnit.test("I should test the Chart controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
