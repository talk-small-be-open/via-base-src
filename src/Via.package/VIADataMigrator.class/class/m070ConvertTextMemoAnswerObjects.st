as yet unclassified
m070ConvertTextMemoAnswerObjects
	VIAHelper allInstancesOfClass: VIATaskExercise do: [ :each |
		| answersDictionary memos |
		answersDictionary := each instVarNamed: 'answers'.
		
		memos := answersDictionary keys select: [ :e | e isKindOf: VIATextMemo ].
		memos do: [ :eachMemo |
			| answer oldAnswerText |
			answer := each answerOf: eachMemo.
			oldAnswerText := answer value.
			oldAnswerText isString ifTrue: [
				Transcript crShow: 'Memo answer converted'.
				answer presetValue: (VIATextMemoAnswerItem new
					text: oldAnswerText;
					yourself)
			] ]
	]