as yet unclassified
points
	self isUnchecked ifTrue: [ ^0 ].

	"Entweder fixe Punkte schon da, oder von Übung und Korrektheit berechnen"
	^ points ifNil: [
		taskBrick ifNil: [ ^0 ].
		correctness ifNil: [ ^0 ].

		"OPTIONAL: Mit /correctionCount gewichten"
		(taskBrick maxPoints * (correctness/100)) rounded ]