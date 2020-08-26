testing
isValidReference: aString
	"Absolute or relative links"
	^ (aString includesSubstring: '://' caseSensitive: true) or: [ aString beginsWith: '/' ]