visiting-document
visitDefinitionList: anObject
	canvas potentialNewLine.
	anObject children do: [ :each |
		self 
			nest: each class markup
			do: [ self visit: each ] ]