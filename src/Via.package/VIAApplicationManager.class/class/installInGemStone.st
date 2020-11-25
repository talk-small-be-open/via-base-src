gemstone
installInGemStone

	"Block re-install"
	VIADatabase current ifNotNil: [ self error: 'Is already installed! To reinstall you must delete the VIA-Database manually.' ].
	
	"CANT Must be SystemUser: self installGemStoneTimeZone."
	
	"Create the database instance"
	VIADatabase
		createProductionDatabase;
		useProductionDatabase.

	self registerSeasideComponents.
	self loadDefaultData.

"	self configurePaths."
	
	"Pre-warm"
	self runTasksAll5Minutes.