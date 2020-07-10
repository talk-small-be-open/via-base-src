as yet unclassified
correctnessOfAnswer: anAnswer
	| solution correctCount |
	solution := self items.
	
	correctCount := 0.
	anAnswer withIndexDo: [ :each :index |
		((solution indexOf: each) = index) ifTrue: [ correctCount := correctCount + 1 ]
	].

	correctCount = 0 ifTrue: [ ^ 0 ].
	
	^ correctCount * 100 // solution size