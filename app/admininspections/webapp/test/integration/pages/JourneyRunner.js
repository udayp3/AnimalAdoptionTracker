sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"admininspections/admin/admininspections/test/integration/pages/InspectionsList.gen",
	"admininspections/admin/admininspections/test/integration/pages/InspectionsObjectPage.gen"
], function (JourneyRunner, InspectionsListGenerated, InspectionsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('admininspections/admin/admininspections') + '/test/flp.html#app-preview',
        pages: {
			onTheInspectionsListGenerated: InspectionsListGenerated,
			onTheInspectionsObjectPageGenerated: InspectionsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

