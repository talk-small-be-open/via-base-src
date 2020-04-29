as yet unclassified
matchesHost: aString
	^self allDomains anySatisfy: [:each |
		aString endsWith: each]