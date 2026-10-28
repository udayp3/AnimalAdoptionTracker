sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"myapplications/user/myapplications/test/integration/pages/AdoptionApplicationsList.gen",
	"myapplications/user/myapplications/test/integration/pages/AdoptionApplicationsObjectPage.gen"
], function (JourneyRunner, AdoptionApplicationsListGenerated, AdoptionApplicationsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('myapplications/user/myapplications') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionApplicationsListGenerated: AdoptionApplicationsListGenerated,
			onTheAdoptionApplicationsObjectPageGenerated: AdoptionApplicationsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

