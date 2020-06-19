as yet unclassified
percentFinished
	| points max |
	points := self points.
	max := self maxPoints.
	
	points = 0 ifTrue: [^0].
	max = 0 ifTrue: [^100].

	^(points * 100 / max) asInteger