as yet unclassified
isCharHighlightedAt: anInteger

	^ highlightedCharsMap value ifBlank: [ false ] ifNotBlank: [:string |
		| symbol |
		symbol := string at: anInteger ifAbsent: [^ false ].
		symbol ~= notHighlightedSymbol ]