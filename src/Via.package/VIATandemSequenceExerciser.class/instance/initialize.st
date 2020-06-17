initialization
initialize
	super initialize.
	
	self addContainerDiv.
	
	"For the moment only 2 players"
	totalPlayers := 2.
	total := taskBrick qAndACount.
	self gotoQAndA: 1.