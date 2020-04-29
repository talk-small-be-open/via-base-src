validation
isValid
	| value |
	value := self attributeValue.
	
	value ifNil: [^false].

	self ifEmptyAndNotAllowed: [^false].

	^true