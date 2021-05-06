initialization
initialize
	super initialize.

	namespace := 'global'.
	
	self addContainerDiv.
	
	lastPairedUser := self db findLastRecentlyPairedUserOfMe: self currentUser.
