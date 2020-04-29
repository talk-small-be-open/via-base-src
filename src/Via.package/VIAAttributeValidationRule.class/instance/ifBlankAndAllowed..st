as yet unclassified
ifBlankAndAllowed: aBlock
	self ifNilAndAllowed: aBlock.
	self ifEmptyAndAllowed: aBlock.