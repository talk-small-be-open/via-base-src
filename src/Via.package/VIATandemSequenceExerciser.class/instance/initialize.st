initialization
initialize
	| qAndASequence |
	
	super initialize.

	showHistory := false.
		
	self addContainerDiv.
	
	totalQAndAs := taskBrick qAndACount.

	qAndASequence := taskBrick shuffleSequence
		ifTrue: [
"			(1 to: totalQAndAs) asArray shuffleBy: (Random seed: randomCode asInteger)"
			(1 to: totalQAndAs) asArray shuffled
		] ifFalse: [
			(1 to: totalQAndAs)
		].

	self createSequence: qAndASequence.

	gameBoardId := UUID new asString36.

	self restart