as yet unclassified
calculateMostWrongBricks
	"Hole diejenigen Input-TaskBricks, welche am meisten falsche Antworten im Exam haben"

	| wrongs |
	
	wrongs := IdentityBag new.
		
	model moduleExercises do: [:eachMe |
		eachMe taskExercisesDo: [:eachTe |
			eachTe mainAnswerHolders do: [:eachAh |
				eachAh isCorrect ifFalse: [wrongs add: eachAh taskBrick]
			]
		]
	].

	wrongBricksAndCount := wrongs