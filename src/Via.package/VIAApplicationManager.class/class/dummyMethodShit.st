gemstone
dummyMethodShit

	"dummy change"
	true ifTrue: [  ].
	
	"Block re-install"
	VIADatabase current ifNotNil: [ self error: 'Is already installed! To reinstall you must delete the VIA-Database manually.' ].
	
	"Create the database instance"
	VIADatabase
		createProductionDatabase;
		useProductionDatabase.

	self registerSeasideComponents.
	self loadDefaultData.
	
	"Pre-warm"
	self runTasksAll5Minutes.
