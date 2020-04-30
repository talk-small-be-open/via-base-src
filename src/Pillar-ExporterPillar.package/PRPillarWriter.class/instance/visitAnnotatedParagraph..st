visiting-document
visitAnnotatedParagraph: anObject
	canvas 
		raw: anObject class markup;
		nextPutAll: anObject annotation.
	anObject hasChildren 
		ifTrue: [ canvas space ].
	super visitAnnotatedParagraph: anObject