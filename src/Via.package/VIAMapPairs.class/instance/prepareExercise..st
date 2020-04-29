as yet unclassified
prepareExercise: anExercise
	"Wir setzen die Antwort-Presets zufällig"
	| shuffledAnswers lastIsCorrect |
	shuffledAnswers := (pairInputs collect: #rightPillar) shuffled.
	lastIsCorrect := false.
	pairInputs do: [:each |
		| answerHolder presetAnswer |

		"Hole zufällige Antwort, nicht aber die korrekte"
		presetAnswer := shuffledAnswers
			detect: [:eachPillar | each rightPillar ~~ eachPillar]
			ifNone: [lastIsCorrect := true. shuffledAnswers anyOne].
		shuffledAnswers remove: presetAnswer.
		
		answerHolder := anExercise answerOf: each.
		answerHolder presetValue: presetAnswer].

	"Spezialfall, wenn letztes Element zufällig doch korrekt ist. Tauschen mit erstem"	
	((pairInputs size > 1) and: [lastIsCorrect]) ifTrue: [
		| last first temp |
		first := (anExercise answerOf: pairInputs first).
		last := (anExercise answerOf: pairInputs last).
		
		temp := first value.
		first presetValue: last value.
		last presetValue: temp.
	]