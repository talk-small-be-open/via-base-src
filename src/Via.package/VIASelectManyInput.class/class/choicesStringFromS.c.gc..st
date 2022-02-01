parsing
choicesStringFromS: solutions c: choices gc: choicesGroups

	"Do we have a group data? "
	choicesGroups ifNotBlank: [
		^ String streamContents: [ :s |
			choicesGroups do: [ :eachGroup |
				eachGroup do: [ :eachChoice |
					(solutions includes: eachChoice) ifTrue: [ s << '*' ].
					s << eachChoice asString.
				]
				separatedBy: [ s lf ]
			]
			separatedBy: [ s lf. s << '--'. s lf ]
		]
	].
	
	"Without groupings (Backwards compatibility)"
	^MCLPlatform joinCollection: (choices collect: [:each |
		(solutions includes: each)
			ifTrue: [ '*', each asString ]
			ifFalse: [ each asString ] ] ) delimiter: String lf