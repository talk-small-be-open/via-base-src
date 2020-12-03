testing
playerInTurnInRound: anInteger
	"Answers 1 (Player A) or 2 (Player B)"
	^ ((anInteger ifNil: [1]) \\ 2) + 1