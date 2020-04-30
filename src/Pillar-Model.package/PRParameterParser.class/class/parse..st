parses
parse: aString
	^ self
		parse: aString
		markupParameter: self defaultMarkupParameter
		markupParameterValue: self defaultMarkupParameterValue