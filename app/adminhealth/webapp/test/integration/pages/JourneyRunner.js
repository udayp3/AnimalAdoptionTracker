sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"healthrecord/admin/adminhealth/test/integration/pages/HealthRecordsList.gen",
	"healthrecord/admin/adminhealth/test/integration/pages/HealthRecordsObjectPage.gen"
], function (JourneyRunner, HealthRecordsListGenerated, HealthRecordsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('healthrecord/admin/adminhealth') + '/test/flp.html#app-preview',
        pages: {
			onTheHealthRecordsListGenerated: HealthRecordsListGenerated,
			onTheHealthRecordsObjectPageGenerated: HealthRecordsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

