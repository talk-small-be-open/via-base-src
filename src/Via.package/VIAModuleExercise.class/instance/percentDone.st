as yet unclassified
percentDone
	| total actual |
	total := self taskExercises size * 100.
	actual := self taskExercises sumNumbers: [ :each | each percentDone ].

	^ VIAHelper percentage: actual of: total