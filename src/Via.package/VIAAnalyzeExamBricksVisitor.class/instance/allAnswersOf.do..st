as yet unclassified
allAnswersOf: aBrick do: aBlock

	exam moduleExercises do: [:each |
		each taskExercisesDo: [:eachTe |
			(eachTe hasAnswerOf: aBrick) ifTrue: [
				aBlock value: (eachTe answerOf: aBrick)]
		]
	].