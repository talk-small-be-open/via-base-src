testing
matchesSearchString: aSearchString in: aString
	aSearchString ifBlank: [ ^ false ].
	aString ifBlank: [ ^ false ].

	^ aString includesSubstring: aSearchString caseSensitive: false