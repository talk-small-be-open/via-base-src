accessing
orphanedPlaceholders
	placeholderShelf ifNil: [ ^ #() ].

	^ placeholderShelf values copyWithoutAll: self placeholders