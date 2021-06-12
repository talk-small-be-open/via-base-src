as yet unclassified
ifNeeds: aString then: aBlock
	^ (features includes: aString) ifTrue: aBlock