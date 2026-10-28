sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"myadoptions/user/myadoptions/test/integration/pages/AdoptionsList.gen",
	"myadoptions/user/myadoptions/test/integration/pages/AdoptionsObjectPage.gen"
], function (JourneyRunner, AdoptionsListGenerated, AdoptionsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('myadoptions/user/myadoptions') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionsListGenerated: AdoptionsListGenerated,
			onTheAdoptionsObjectPageGenerated: AdoptionsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

