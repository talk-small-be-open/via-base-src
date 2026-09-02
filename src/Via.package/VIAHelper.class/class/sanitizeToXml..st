as yet unclassified
sanitizeToXml: aString
	| sanitized |

	aString ifNil: [ ^ '' ].

	sanitized := aString select: [ :c | self isXmlChar: c ].

	"asString in GemStone maybe downsize from DoubleByteString to normal String"
	^sanitized asString