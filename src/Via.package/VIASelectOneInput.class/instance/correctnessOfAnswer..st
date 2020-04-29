as yet unclassified
correctnessOfAnswer: aValue
	^(self solutions includes: aValue)
		ifTrue: [100]
		ifFalse: [0]