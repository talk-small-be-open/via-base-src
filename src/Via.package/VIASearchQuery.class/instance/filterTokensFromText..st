as yet unclassified
filterTokensFromText: aText
	^(aText findTokens: ', ') reject: [:each | each size < 2].