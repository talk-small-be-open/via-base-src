as yet unclassified
ifNeedsAny: aCollection then: aBlock
	^ (features includesAny: aCollection) ifTrue: aBlock