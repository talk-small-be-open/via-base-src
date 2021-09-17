tests
testAnalyzeWholeWordsOnly
	| ha |
	ha := VIAHighlightAreas new.

	"No areas means nothing special = not whole words"
	ha pillarString: 'abc def ghi'.
	self deny: ha isWholeWordsOnly.
	
	ha pillarString: 'abc _§xxxx_ def _§yyyy_'.
	self assert: ha isWholeWordsOnly.
	
	ha pillarString: 'abc_§xxxx_ def _§yyyy_'.
	self deny: ha isWholeWordsOnly.
	
	ha pillarString: 'abc _§xxxx_def _§yyyy_'.
	self deny: ha isWholeWordsOnly.