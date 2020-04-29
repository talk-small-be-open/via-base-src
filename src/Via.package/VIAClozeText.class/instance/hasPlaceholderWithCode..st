testing
hasPlaceholderWithCode: aString
	^self placeholders anySatisfy: [:each | each code = aString]