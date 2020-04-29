as yet unclassified
percentFinished
	| points |
	points := self points.

	points = 0 ifTrue: [^0].

	^(points * 100 / self maxPoints) asInteger
