testing
isTooBig
	^self maximumValue notNil and: [self attributeValue > (self maximumValue)]