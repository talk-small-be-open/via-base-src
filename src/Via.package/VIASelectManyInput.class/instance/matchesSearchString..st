as yet unclassified
matchesSearchString: aString
	^ choices anySatisfy: [:each |
		VIAHelper matchesSearchString: aString in: each ]