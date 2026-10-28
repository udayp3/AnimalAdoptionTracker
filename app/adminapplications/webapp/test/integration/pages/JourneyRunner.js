sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"adminapplications/adminapplications/test/integration/pages/AdoptionApplicationsList.gen",
	"adminapplications/adminapplications/test/integration/pages/AdoptionApplicationsObjectPage.gen"
], function (JourneyRunner, AdoptionApplicationsListGenerated, AdoptionApplicationsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('adminapplications/adminapplications') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionApplicationsListGenerated: AdoptionApplicationsListGenerated,
			onTheAdoptionApplicationsObjectPageGenerated: AdoptionApplicationsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

