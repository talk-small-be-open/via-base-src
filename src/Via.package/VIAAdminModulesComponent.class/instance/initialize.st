initialization
initialize

	super initialize.
	
	columnsCount := 4.
	showOnlyMy := true.
	modules := #().
	self ifAdmin: [showOnlyMy := false].

	self beRestoringScrollPosition.
"	self showAll."
