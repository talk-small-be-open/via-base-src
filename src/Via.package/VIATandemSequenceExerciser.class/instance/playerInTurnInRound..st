testing
playerInTurnInRound: anInteger
	"Answers 1 (Player A) or 2 (Player B). Round 1 player A will answer the question"
	^ (((anInteger ifNil: [1]) + 1) \\ 2) + 1