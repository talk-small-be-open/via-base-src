initialization
initialize
	super initialize.
	
	self addContainerDiv.
	
	"For the moment only 2 players"
	totalPlayers := 2.
	total := taskBrick qAndACount.

	randomCode := nil.	
	sequence := (1 to: total) asArray.
	
	"Immediate start, if not shuffled"
	taskBrick shuffleSequence ifFalse: [
		self start]