testing
isFirstRound
	^ stepIndex = firstGameIndex or: [ stepIndex = (firstGameIndex + 1) ]