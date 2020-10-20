as yet unclassified
iamPlayerNumber: aNumber
	playerNumber := aNumber.
	
	(playerNumber = 1 and: [ taskBrick shuffleSequence ]) ifTrue: [ self ensureRandomCode ]