accessing
orphanedAreas
	areaShelf ifNil: [ ^ #() ].

	^ areaShelf values copyWithoutAll: self areas