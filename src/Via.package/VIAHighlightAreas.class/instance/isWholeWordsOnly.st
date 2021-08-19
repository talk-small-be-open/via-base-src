testing
isWholeWordsOnly
	isWholeWordsOnly ifNil: [ self analyzeWholeWordsOnly ].

	^ isWholeWordsOnly