initialization
gotoQAndA: anInteger
	anInteger isInteger ifFalse: [ ^ self ].
	
	currentQAndACounter := self qAndASequence indexOf: anInteger.
	currentQAndA := taskBrick qAndAAt: anInteger.