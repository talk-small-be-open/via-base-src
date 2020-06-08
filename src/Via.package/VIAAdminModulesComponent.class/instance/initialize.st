initialization
initialize

	super initialize.
	
	columnsCount := 4.
	showOnlyMy := true.
	self ifAdmin: [showOnlyMy := false].

	self beRestoringScrollPosition.
	self addContainerDiv.