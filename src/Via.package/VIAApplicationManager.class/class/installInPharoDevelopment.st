gemstone
installInPharoDevelopment

	"Block re-install"
	VIADatabase current ifNotNil: [ self error: 'Is already installed! To reinstall you must delete the VIA-Database manually.' ].

	"Neue Datenbank mit Beispieldaten aufsetzen"
	VIADatabase
"		destroyDevelopmentDatabase;"
		createDevelopmentDatabase;
		useDevelopmentDatabase.
	
	self loadDefaultData.
	self ensureDefaultConfiguration.
	self runTasksAll5Minutes.

	self registerSeasideComponents.

	"configure webserver"
	"TODO: Install, port, ..."
"	ZnZincServerAdaptor default useDefaultExpirationHeaders."

	self loadAdmin: 'andreas.brodbeck@mindclue.ch' password: 'test123'.
	VIADatabase current loadSampleData.
