as yet unclassified
visitSelectManyInput: aBrick
	| data total |
	data := self addDataFor: aBrick.
	total := exam studentsCount.

	aBrick choices do: [:eachChoice |
		| wrongness selectedCount nonSelectedCount  |

		selectedCount := 0.
		self allAnswersOf: aBrick do: [:answer |
			(answer value includes: eachChoice) ifTrue: [selectedCount := selectedCount + 1].
		].
	
		nonSelectedCount := total - selectedCount.

		(aBrick isSolution: eachChoice)
			ifTrue: [wrongness := VIAHelper percentage: nonSelectedCount of: total]
			ifFalse: [wrongness := VIAHelper percentage: selectedCount of: total].

		data at: eachChoice put: wrongness
	]