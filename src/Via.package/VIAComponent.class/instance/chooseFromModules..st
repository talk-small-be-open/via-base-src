as yet unclassified
chooseFromModules: aCollection
	aCollection ifEmpty: [ ^self ].
	
	aCollection size = 1 ifTrue: [ self clickModuleCard: aCollection anyOne. ^ self ].

	self showWithBack: (VIASimpleSearchResultComponent modules: aCollection)