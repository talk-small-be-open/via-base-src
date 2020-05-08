as yet unclassified
sanitizeToLatin1: aString
	| sanitized |
	aString ifNil: [^''].

	sanitized := aString collect: [:c | c asciiValue > 255 ifTrue: [$_] ifFalse: [c]].

	"asString in GemStone maybe downsize from DoubleByteString to normal String"
	^sanitized asString