initialization
initialize
	super initialize.
	
	self addContainerDiv.
	
	lastPairedUser := self db findLastRecentlyPairedUserOfMe: self currentUser.
