accessing
name: aString
	|  |
	text := aString.
	"nameString := aString select: [:char | char isAlphaNumeric]."

	name := (aString isBlank or: [aString first ~= self markerIdentificationChar])
		ifTrue: [self getAutoName]
		ifFalse: [aString]
