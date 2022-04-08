validation
attributeValueOf: anObject
	^(MCLPlatform splitString: of greaseString delimiter: $:)
		inject: anObject into: [:object :method |
			object perform: method asSymbol]