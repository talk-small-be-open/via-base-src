as yet unclassified
matchesSearchString: aString
	^((title includesSubstring: aString caseSensitive: false) or:
	[classification matchesSearchString: aString]) or:
	[self authorUsers anySatisfy: [:each | each fullName includesSubstring: aString caseSensitive: false]]