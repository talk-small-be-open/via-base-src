labels
summaryLabelForStudent: aUser
	| me |
	me := self moduleExerciseForStudent: aUser.

	^String streamContents: [:s |
		s nextPutAll: (VIAHelper printPoints: me points).
		s nextPutAll: ' / '.
		s nextPutAll: me maxPoints asString.
	]