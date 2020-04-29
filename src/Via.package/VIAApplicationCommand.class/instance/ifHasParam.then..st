as yet unclassified
ifHasParam: aKey then: aBlock
	^(self hasParam: aKey) ifTrue: [aBlock value: (self paramAt: aKey)]