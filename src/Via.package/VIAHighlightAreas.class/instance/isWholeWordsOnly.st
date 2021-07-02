testing
isWholeWordsOnly
	"check if all areas are whole words. Makes some stuff in the UI easier"
	
	self hasAreas ifFalse: [ ^ false ].

	"has directly joined area before?"
	(self pillarString matchesRegexIgnoringCase: '^.*\S\_§[[:alnum:]]+\_.*$') ifTrue: [^false].

	"has directly joined area after?"
	(self pillarString matchesRegexIgnoringCase: '^.*\_§[[:alnum:]]+\_\S.*$') ifTrue: [^false].
	
	^ true