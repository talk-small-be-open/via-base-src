tests
testAnalyzeWholeWordsOnly
	| ha |
	ha := VIAHighlightAreas new.

	"No areas means nothing special = not whole words"
	ha pillarString: 'abc def ghi'.
	self deny: ha isWholeWordsOnly.
	
	ha pillarString: 'abc _§xxxx_ def _§yyyy_'.
	self assert: ha isWholeWordsOnly.

	ha pillarString: 'abc this/_§xxxx_ asdfasdf _§yyyy_/that blabla'.
	self assert: ha isWholeWordsOnly.

	ha pillarString: 'abc this-_§xxxx_ blabla _§yyyy_-that asdfasdf'.
	self assert: ha isWholeWordsOnly.

	ha pillarString: '_§start_ of line'.
	self assert: ha isWholeWordsOnly.

	ha pillarString: 'end of _§line_'.
	self assert: ha isWholeWordsOnly.

	ha pillarString: 'not nice punctuation._§here_ blabla'.
	self assert: ha isWholeWordsOnly.
	
	ha pillarString: 'abc_§xxxx_ def _§yyyy_'.
	self deny: ha isWholeWordsOnly.

	ha pillarString: 'ab€_§xxxx_ dfdf'.
	self deny: ha isWholeWordsOnly.

	ha pillarString: 'abà_§xxxx_ dfdf'.
	self deny: ha isWholeWordsOnly.

	ha pillarString: 'ab3_§xxxx_ dfdf'.
	self deny: ha isWholeWordsOnly.
	
	ha pillarString: 'abc _§xxxx_def _§yyyy_'.
	self deny: ha isWholeWordsOnly.