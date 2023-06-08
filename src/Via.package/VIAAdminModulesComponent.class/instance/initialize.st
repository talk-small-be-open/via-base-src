initialization
initialize

	super initialize.
	
	columnsCount := 4.
	showOnlyMy := true.
	self modules: #().
	self ifAdmin: [showOnlyMy := false].
	brickTypes := VIATaskBrick allAuthorReady sortedBy: #displayName.

	self beRestoringScrollPosition.
"	self showAll."
