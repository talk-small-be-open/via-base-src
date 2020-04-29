as yet unclassified
matchesSearchString: aString
	| ps |
	ps := self pillarString.
	ps ifBlank: [^false].
	
	^ps includesSubstring: aString caseSensitive: false