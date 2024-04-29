as yet unclassified
sanitizeToSafeAscii: aString
	| sanitized substitute |
	
	"Safe = only visbile, printable characters. No spaces. No > 127"
	
	aString ifNil: [^''].
	substitute := $_.

	sanitized := aString collect: [:c |
		((c asciiValue <= 32) or: [c asciiValue > 127]) ifTrue: [substitute] ifFalse: [c]].

	"asString in GemStone maybe downsize from DoubleByteString to normal String"
	^sanitized asString