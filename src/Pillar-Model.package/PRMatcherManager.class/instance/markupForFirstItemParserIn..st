parsing
markupForFirstItemParserIn: aString 
	
		^ self class 
				findFirstOf: self textMatcher
				at: 1
				in: aString