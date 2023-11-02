as yet unclassified
hintFragmentsString: aString
	hintFragments := aString lines copyWithoutBlanks collect: [ :each |
		VIAHelper pillarFromPillarOneliner: (VIAHelper standardizeCharacters: each)
	]