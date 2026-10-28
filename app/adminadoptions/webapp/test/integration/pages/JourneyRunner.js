sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"adminadoptions/admin/adminadoptions/test/integration/pages/AdoptionsList.gen",
	"adminadoptions/admin/adminadoptions/test/integration/pages/AdoptionsObjectPage.gen"
], function (JourneyRunner, AdoptionsListGenerated, AdoptionsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('adminadoptions/admin/adminadoptions') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionsListGenerated: AdoptionsListGenerated,
			onTheAdoptionsObjectPageGenerated: AdoptionsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

