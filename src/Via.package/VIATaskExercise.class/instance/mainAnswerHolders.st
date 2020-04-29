as yet unclassified
mainAnswerHolders
	^(answers values collect: [:each | each at: #answer ifAbsent: [nil]]) copyWithoutNils