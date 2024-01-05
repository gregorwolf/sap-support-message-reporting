sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'test.alpv4wiz',
            componentId: 'MessageHeaderSetObjectPage',
            contextPath: '/MessageHeaderSet'
        },
        CustomPageDefinitions
    );
});