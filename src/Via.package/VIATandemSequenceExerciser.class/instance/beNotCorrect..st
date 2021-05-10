as yet unclassified
beNotCorrect: aQandAStep
	(self answerHolderOfStep: aQandAStep) value: 'notCorrect'.
	
	"Reset the other player potentially answer from a previous game"
	otherExerciser beUncorrected: aQandAStep