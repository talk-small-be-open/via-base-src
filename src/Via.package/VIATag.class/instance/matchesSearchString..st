as yet unclassified
matchesSearchString: aString
	^(VIAHelper matchesSearchString: aString in: text) or: [
		self textVariants anySatisfy: [:each |
			VIAHelper matchesSearchString: aString in: each ] ]