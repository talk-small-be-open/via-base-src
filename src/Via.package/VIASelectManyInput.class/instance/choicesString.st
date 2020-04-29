as yet unclassified
choicesString
	^MCLPlatform joinCollection: (choices collect: [:each |
		(solutions includes: each)
			ifTrue: ['*', each]
			ifFalse: [each]]) delimiter: String lf