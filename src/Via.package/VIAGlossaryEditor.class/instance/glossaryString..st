as yet unclassified
glossaryString: aString
	
	cachedGlossaryString = aString ifTrue: [ ^ self ].

	glossary
		removeAllEntries;
		addNewEntriesByString: aString.
	
	cachedGlossaryString := nil