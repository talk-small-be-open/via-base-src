as yet unclassified
choicesString
	^MCLPlatform joinCollection: (choices collect: [:each |
		(solutions includes: each)
			ifTrue: ['*', each object]
			ifFalse: [each object]]) delimiter: String lf