sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"sheltertracker/admin/adminshelters/test/integration/pages/SheltersList.gen",
	"sheltertracker/admin/adminshelters/test/integration/pages/SheltersObjectPage.gen"
], function (JourneyRunner, SheltersListGenerated, SheltersObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('sheltertracker/admin/adminshelters') + '/test/flp.html#app-preview',
        pages: {
			onTheSheltersListGenerated: SheltersListGenerated,
			onTheSheltersObjectPageGenerated: SheltersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

