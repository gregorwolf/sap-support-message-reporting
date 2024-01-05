sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'test.alpv4wiz',
            componentId: 'MessageHeaderSetList',
            contextPath: '/MessageHeaderSet'
        },
        CustomPageDefinitions
    );
});