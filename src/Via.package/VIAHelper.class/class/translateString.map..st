as yet unclassified
translateString: aString map: aDictionary
	| translated |
	translated := aString copy.
	translated withIndexDo: [:char :index |
		aDictionary at: char asInteger ifPresent: [:normalizedInteger |
			translated at: index put: normalizedInteger asCharacter]].
	
	^translated