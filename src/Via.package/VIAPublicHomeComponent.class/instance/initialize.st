initialization
initialize

	super initialize.

	showMap := self wd propertyAt: #showSwissMapOnPublicHome ifAbsent: [false].
	
	showMap ifTrue: [
		swissmap := VIAModulesMapComponent new.
	
		swissmap
			useSwissMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules.
			
		worldmap := VIAModulesMapComponent new.
		worldmap
			useWorldMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules
			
		]