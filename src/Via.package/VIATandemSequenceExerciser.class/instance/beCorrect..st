as yet unclassified
beCorrect: aQandAStep
	(self answerHolderOfStep: aQandAStep) value: 'correct'.

	"Reset the other player potentially answer from a previous game"
	otherExerciser beUncorrected: aQandAStep