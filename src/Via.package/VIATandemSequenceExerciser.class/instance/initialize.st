initialization
initialize
	super initialize.
	
	self addContainerDiv.
	
	"For the moment only 2 players"
	totalPlayers := 2.
	total := taskBrick qAndACount.
	sequence := (1 to: total) asArray.

	self reset