testing
isValidReference: aString
	^(aString beginsWith: 'img:') or: [
		"legacy"
		aString size = 25 or: [ aString size = 24 ] ]

	"UUID fromString36: aString"