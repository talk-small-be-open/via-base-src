initialization
initializeDefaultValues
	properties ifNil: [properties := IdentityDictionary new].
	searchEngine ifNil: [searchEngine := VIASearchEngine new].
	uiTexts ifNil: [uiTexts := Dictionary new].
"	trashedObjects ifNil: [trashedObjects := OrderedCollection new]."
	userPairingTokens ifNil: [ userPairingTokens := RcIdentitySet new ].
	websites ifNil: [websites := OrderedCollection new].
	websiteDatas ifNil: [websiteDatas := IdentityDictionary new].

"	self propertyAt: #uploadsBasePath ifAbsentPut: ['/tmp']."
	self propertyAt: #webRootPath ifAbsentPut: ['/tmp'].