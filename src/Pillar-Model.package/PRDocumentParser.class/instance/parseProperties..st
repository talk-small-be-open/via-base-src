parsing
parseProperties: line
	| markupBegin markupEnd input keyword rest separator |
	markupBegin := self class propertiesMarkupBegin.
	markupEnd := self class propertiesMarkupEnd.
	separator := self class propertiesKeywordValueSeparator.
	input := line readStream.
	(input next: markupBegin size) = markupBegin ifFalse: [ ^ false ].
	keyword := input upToAll: separator.
	keyword := keyword trimBoth.
	keyword isAllAlphaNumerics ifFalse: [ ^ false ].
	rest := input upToEnd.
	(rest endsWith: markupEnd) ifFalse: [ ^ false ].
	rest := rest allButLast: markupEnd size.
	rest := rest trimLeft.
	document propertyAt: keyword put: rest.
	^ true