initialization
initialize
	| qAndASequence |
	
	super initialize.

	self addContainerDiv.
	
	totalQAndAs := taskBrick qAndACount.

	"Minimum 2 Q&A are needed to make sense"
	self requirementsReady ifFalse: [ ^ self ].

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