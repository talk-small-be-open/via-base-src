as yet unclassified
visitSelectOneInput: aBrick
	| data total solutionsCount nonSolutionsCount partialTotal |
	data := self addDataFor: aBrick.
	total := exam studentsCount.

	solutionsCount := aBrick solutions size.
	nonSolutionsCount := aBrick choices size - solutionsCount.
	
	aBrick choices do: [:eachChoice |
		| percent selectedCount   |

		selectedCount := 0.
		self allAnswersOf: aBrick do: [:answer |
			(answer value = eachChoice) ifTrue: [selectedCount := selectedCount + 1].
		].
	
"		nonSelectedCount := total - selectedCount."

"		(aBrick isSolution: eachChoice)
			ifTrue: [percent := VIAHelper percentage: nonSelectedCount of: total]
			ifFalse: [percent := VIAHelper percentage: selectedCount of: total]."
		partialTotal := (aBrick isSolution: eachChoice)
			ifTrue: [ total // solutionsCount ]
			ifFalse: [ total // nonSolutionsCount ].
		
		percent := VIAHelper percentage: selectedCount of: partialTotal.
		
		data at: eachChoice put: percent
	]