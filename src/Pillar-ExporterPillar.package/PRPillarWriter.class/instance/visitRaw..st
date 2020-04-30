visiting-document
visitRaw: anObject
	canvas raw: PRRaw markupBegin.
	anObject type isNil
		ifFalse: [ canvas nextPutAll: anObject type; raw: PRRaw verbatimTypeSeparator ].
	canvas raw: anObject text.
	canvas raw: (PRRaw markupEnd: PRRaw markupBegin)