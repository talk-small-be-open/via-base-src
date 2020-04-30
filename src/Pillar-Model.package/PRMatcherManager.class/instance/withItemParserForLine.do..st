parsing
withItemParserForLine: aLine do: aBlock
	"Find an item parser that accepts the beginning of aString. When found, pass it to aBlock. If not found, use a default item parser."

	lineMarkups
		do: [ :markup | 
			(aLine beginsWithSubCollection: markup)
				ifTrue: [ ^ aBlock value: (self class lineMatcher at: markup) ] ].
	^ aBlock value: self class lineMatcherDefault