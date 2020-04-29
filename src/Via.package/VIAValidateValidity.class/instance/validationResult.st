as yet unclassified
validationResult
	validationResult ifNil: [
		otherValidator object: self attributeValue.
		validationResult := otherValidator validationResult].
		
	^validationResult