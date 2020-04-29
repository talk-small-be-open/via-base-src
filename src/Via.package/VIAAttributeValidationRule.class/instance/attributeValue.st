validation
attributeValue
	^(MCLPlatform splitString: of greaseString delimiter: $:)
		inject: validator object into: [:object :method |
			object perform: method asSymbol]