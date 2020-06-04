testing
matchesIndexCode: aString
	"I am 1.2.3
	matches: 1, 1., 1.2, 1.2., 1.2.3"

	indexCode ifNil: [ ^ false ].
	
	^ indexCode beginsWith: aString