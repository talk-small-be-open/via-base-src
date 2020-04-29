as yet unclassified
isValid
	| value |
	
	self ifBlankAndAllowed: [^true].
	
	value := self attributeValue.
	^value isEmptyOrNil
		ifTrue: [false]
		ifFalse: [value matchesRegexIgnoringCase: regularExpression]