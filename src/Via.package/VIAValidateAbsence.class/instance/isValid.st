validation
isValid
	| value |
	value := self attributeValue.
	
	value ifNil: [^true].

	self ifEmptyAndAllowed: [^true].

	^false