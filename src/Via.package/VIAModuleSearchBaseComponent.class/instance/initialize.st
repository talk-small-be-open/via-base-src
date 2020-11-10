initialization
initialize

	super initialize.

	self addContainerDiv.

	moduleCardRenderer := self website moduleCardRendererClass component: self.

	searchQuery ifNotNil: [
		searchFormRenderer := VIASearchFormRenderer component: self query: searchQuery].

	showMap ifNil: [
		showMap := self isFeature: #showSwissMapOnSearch].
	
	showMap ifTrue: [
		map := VIAModulesMapComponent new.
	
		map
			useSwissMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules]