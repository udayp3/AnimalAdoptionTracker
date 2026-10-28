sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animaltracker/user/animalbrowser/test/integration/pages/AnimalsList.gen",
	"animaltracker/user/animalbrowser/test/integration/pages/AnimalsObjectPage.gen"
], function (JourneyRunner, AnimalsListGenerated, AnimalsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animaltracker/user/animalbrowser') + '/test/flp.html#app-preview',
        pages: {
			onTheAnimalsListGenerated: AnimalsListGenerated,
			onTheAnimalsObjectPageGenerated: AnimalsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

