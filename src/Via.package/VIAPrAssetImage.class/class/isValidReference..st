testing
isValidReference: aString
	"TODO: Remove, as soon as all images are with the new img: syntax"
	
	^(aString beginsWith: 'img:') or: [
		"legacy"
		aString size = 25 or: [ aString size = 24 ] ]

	"UUID fromString36: aString"