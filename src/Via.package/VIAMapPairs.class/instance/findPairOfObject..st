as yet unclassified
findPairOfObject: anObject
	^ pairInputs detect: [ :each | each includesPillarObject: anObject ] ifNone: [ nil ]