actions
performSearch
	uiTextKeys := self db uiTexts keys sorted asOrderedCollection.
	
	searchString ifNotBlank: [
		uiTextKeys := uiTextKeys select: [ :each |
			each includesSubstring: searchString caseSensitive: false ]  ]