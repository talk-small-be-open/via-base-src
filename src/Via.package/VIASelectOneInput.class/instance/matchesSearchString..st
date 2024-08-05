testing
matchesSearchString: aString
	^ choices anySatisfy: [:each |
		VIAHelper matchesSearchString: aString in: each ]