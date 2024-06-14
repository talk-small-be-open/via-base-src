as yet unclassified
correctness: anInteger
	
	anInteger >= 99.9 ifTrue: [
		self beCorrect.
		self afterCheck.
		^ self ].

	anInteger <= 0 ifTrue: [
		self beWrong.
		self afterCheck.
		^ self ].

	"else"
	self bePartiallyCorrect: anInteger.	
	self afterCheck