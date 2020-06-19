parsing
choicesStringFromS: solutions c: choices gc: choicesGroups

	"Do we have a group data? (Backwards compatibility)"
	choicesGroups ifNotBlank: [
		^ String streamContents: [ :s |
			choicesGroups do: [ :eachGroup |
				eachGroup do: [ :eachChoice |
					(solutions includes: eachChoice) ifTrue: [ s << '*' ].
					s << eachChoice.
				]
				separatedBy: [ s lf ]
			]
			separatedBy: [ s lf. s << '--'. s lf ]
		]
	].
	
	"Without groupings"
	^MCLPlatform joinCollection: (choices collect: [:each |
		(solutions includes: each)
			ifTrue: ['*', each]
			ifFalse: [each]]) delimiter: String lf