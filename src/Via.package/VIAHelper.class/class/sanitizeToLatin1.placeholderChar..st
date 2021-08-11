as yet unclassified
sanitizeToLatin1: aString placeholderChar: aChar
	| sanitized |
	aString ifNil: [^''].

	sanitized := aString collect: [:c | c asciiValue > 255 ifTrue: [aChar] ifFalse: [c]].

	"asString in GemStone maybe downsize from DoubleByteString to normal String"
	^sanitized asString