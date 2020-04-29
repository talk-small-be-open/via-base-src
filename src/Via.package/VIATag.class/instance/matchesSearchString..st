as yet unclassified
matchesSearchString: aString
	^(text includesSubstring: aString caseSensitive: false) or: [
		self textVariants anySatisfy: [:each | each includesSubstring: aString caseSensitive: false]]