as yet unclassified
isValid
	| value |
	
	self ifBlankAndAllowed: [^true].

	^self attributeValue = equalValue