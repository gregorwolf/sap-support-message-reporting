sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'test/alpv4wiz/test/integration/FirstJourney',
		'test/alpv4wiz/test/integration/pages/MessageHeaderSetList',
		'test/alpv4wiz/test/integration/pages/MessageHeaderSetObjectPage',
		'test/alpv4wiz/test/integration/pages/MessageAlogSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, MessageHeaderSetList, MessageHeaderSetObjectPage, MessageAlogSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('test/alpv4wiz') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMessageHeaderSetList: MessageHeaderSetList,
					onTheMessageHeaderSetObjectPage: MessageHeaderSetObjectPage,
					onTheMessageAlogSetObjectPage: MessageAlogSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);