sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"adminusers/admin/adminusers/test/integration/pages/UsersList.gen",
	"adminusers/admin/adminusers/test/integration/pages/UsersObjectPage.gen"
], function (JourneyRunner, UsersListGenerated, UsersObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('adminusers/admin/adminusers') + '/test/flp.html#app-preview',
        pages: {
			onTheUsersListGenerated: UsersListGenerated,
			onTheUsersObjectPageGenerated: UsersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

