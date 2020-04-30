visiting-document
visitAnnotation: anAnnotation
	canvas
		raw: anAnnotation class markupBegin;
		nextPutAll: anAnnotation class tag.
	anAnnotation hasParameters
		ifTrue: [ 
			canvas raw: anAnnotation class markupParameterSeparator asString.
			self visitParametersOf: anAnnotation ].
	canvas raw: anAnnotation class markupEnd