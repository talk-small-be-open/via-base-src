visiting-document
visitTableCell: anObject
	canvas raw: anObject class markup.
	anObject isAligned ifTrue: [
		anObject isAlignedLeft ifTrue: [ canvas raw: anObject class markupLeft ].
		anObject isAlignedCenter ifTrue: [ canvas raw: anObject class markupCenter ].
		anObject isAlignedRight ifTrue: [ canvas raw: anObject class markupRight ] ].
	anObject isHeading ifTrue: [ canvas raw: anObject class markupHeading ].
	super visitTableCell: anObject