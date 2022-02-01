testing
analyzeWholeWordsOnly
	| string |
	"check if all areas are whole words. Makes some stuff in the UI easier"
	
	isWholeWordsOnly := true.
	
	self hasAreas ifFalse: [ isWholeWordsOnly := false. ^ self ].

	string := self pillarString.
	
	"has directly joined area before?"
	"asString for GemStone unicode"
	
	"Use? gemstoneSafe: aString matchesRegexIgnoringCase: aRxString onError: aBlock"
	
	(VIAHelper
		gemstoneSafe: string
		prefixMatchesRegexIgnoringCase: '.*[[:alnum:]]\_§[[:alnum:]]+\_.*' onError: [false]
	) ifTrue: [
		isWholeWordsOnly := false. ^ self ].

	"has directly joined area after?"
	(VIAHelper
		gemstoneSafe: string
		prefixMatchesRegexIgnoringCase: '.*\_§[[:alnum:]]+\_[[:alnum:]].*' onError: [false]
	) ifTrue: [
		isWholeWordsOnly := false. ^ self ].