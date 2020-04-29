as yet unclassified
ifNilAndAllowed: aBlock notAllowed: anElseBlock
	self attributeValue isNil ifTrue: [
		allowNil
			ifTrue: aBlock
			ifFalse: anElseBlock]