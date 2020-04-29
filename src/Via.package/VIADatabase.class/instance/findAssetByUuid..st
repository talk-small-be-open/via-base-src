finders
findAssetByUuid: aString
	self websiteDatasDo: [:each |
		(each findAssetByUuid: aString) ifNotNil: [:asset | ^asset]].
	
	^nil