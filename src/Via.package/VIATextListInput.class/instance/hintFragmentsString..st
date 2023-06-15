as yet unclassified
hintFragmentsString: aString
	hintFragments := aString lines copyWithoutBlanks collect: [ :each |
		VIAHelper standardizeCharacters: each ]