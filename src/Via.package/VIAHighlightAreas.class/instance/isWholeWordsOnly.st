testing
isWholeWordsOnly
	| sanitized |
	"check if all areas are whole words. Makes some stuff in the UI easier"
	
	self hasAreas ifFalse: [ ^ false ].

	sanitized := (VIAHelper sanitizeToLatin1: self pillarString placeholderChar: $x).
	
	"has directly joined area before?"
	"asString for GemStone unicode"
	(sanitized matchesRegexIgnoringCase: '^.*\S\_§[[:alnum:]]+\_.*$') ifTrue: [^false].

	"has directly joined area after?"
	(sanitized matchesRegexIgnoringCase: '^.*\_§[[:alnum:]]+\_\S.*$') ifTrue: [^false].
	
	^ true