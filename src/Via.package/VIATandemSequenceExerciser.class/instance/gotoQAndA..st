initialization
gotoQAndA: anInteger
	currentQAndACounter := self qAndASequence indexOf: anInteger.
	currentQAndA := taskBrick qAndAAt: anInteger.