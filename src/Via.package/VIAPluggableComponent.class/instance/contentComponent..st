accessing
contentComponent: anObject
	contentComponent := anObject.
	contentComponent onAnswer: [:value | self answer: value]