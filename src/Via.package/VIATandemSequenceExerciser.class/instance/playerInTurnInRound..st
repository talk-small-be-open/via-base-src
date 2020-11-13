testing
playerInTurnInRound: anInteger
	^ ((anInteger ifNil: [1]) \\ 2) + 1