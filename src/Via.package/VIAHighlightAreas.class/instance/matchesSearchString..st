as yet unclassified
matchesSearchString: aString
	pillarString ifBlank: [^false].

	^pillarString includesSubstring: aString caseSensitive: false