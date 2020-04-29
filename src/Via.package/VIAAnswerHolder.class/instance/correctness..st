as yet unclassified
correctness: anInteger
	
	anInteger >= 99.9 ifTrue: [self beCorrect. ^self].
	anInteger <= 0 ifTrue: [self beWrong. ^self].

	correction := #partiallyCorrect.
	correctness := anInteger min: 100 max: 0.
