visiting-document
visitParametersOf: objectWithParams
	objectWithParams parameters associations
		do: [ :assoc | 
			canvas nextPutAll: assoc key.
			assoc value ifNotNil: [ :value |
					canvas
						raw: objectWithParams class markupParameterValue;
						nextPutAll: value greaseString ] ]
		separatedBy: [ canvas raw: objectWithParams class markupParameter ]