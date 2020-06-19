as yet unclassified
choicesString
	^ self class choicesStringFromS: solutions c: choices gc: choicesGroups
"	^MCLPlatform joinCollection: (choices collect: [:each |
		(solutions includes: each)
			ifTrue: ['*', each]
			ifFalse: [each]]) delimiter: String lf"