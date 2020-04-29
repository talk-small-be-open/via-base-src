testing
isTooSmall
	^self minimumValue notNil and: [self attributeValue < (self minimumValue)]