accessing
durationTag
	^classification durationTag
"	^self tasks
		ifEmpty: [nil]
		ifNotEmpty: [:ts | ts sum: [:each | each classification durationTag]]"