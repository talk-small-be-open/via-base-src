as yet unclassified
solutionsString: aString
	solutions := aString lines copyWithoutBlanks collect: [ :each |
		VIAHelper standardizeCharacters: each ]