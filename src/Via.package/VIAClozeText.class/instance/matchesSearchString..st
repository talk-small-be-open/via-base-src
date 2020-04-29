as yet unclassified
matchesSearchString: aString
	clozeTemplateString ifBlank: [^false].
	
	^clozeTemplateString includesSubstring: aString caseSensitive: false