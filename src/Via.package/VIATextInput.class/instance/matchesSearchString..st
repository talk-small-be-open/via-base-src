testing
matchesSearchString: aString
	^ solutions anySatisfy: [:each |
		VIAHelper matchesSearchString: aString in: each ]