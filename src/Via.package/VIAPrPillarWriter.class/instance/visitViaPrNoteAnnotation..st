as yet unclassified
visitViaPrNoteAnnotation: anAnnotation
	canvas
		raw: anAnnotation class markupBegin;
		nextPutAll: anAnnotation class tag.
	anAnnotation hasParameters
		ifTrue: [ 
			canvas raw: anAnnotation class markupParameterSeparator asString.

			anAnnotation parameters
				do: [ :param | 
"					canvas nextPutAll: assoc key."
					param ifNotNil: [ :value |
							canvas
"								raw: objectWithParams class markupParameterValue;"
"								nextPutAll: value greaseString"
								raw: value greaseString ] ]
				separatedBy: [ canvas raw: anAnnotation class markupParameter ]
	].
	canvas raw: anAnnotation class markupEnd