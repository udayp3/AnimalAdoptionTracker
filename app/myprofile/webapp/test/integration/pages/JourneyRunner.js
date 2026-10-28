sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"myprofile/user/myprofile/test/integration/pages/UsersList.gen",
	"myprofile/user/myprofile/test/integration/pages/UsersObjectPage.gen"
], function (JourneyRunner, UsersListGenerated, UsersObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('myprofile/user/myprofile') + '/test/flp.html#app-preview',
        pages: {
			onTheUsersListGenerated: UsersListGenerated,
			onTheUsersObjectPageGenerated: UsersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

