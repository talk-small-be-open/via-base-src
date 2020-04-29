initialization
initialize
	super initialize.

	self addForm withStandardSaveCancelButtons.
	
	task := nil.

	
	authorBricks := (((VIATaskBrick allSubclasses select: #isAuthorReady) sortedBy: #displayName) groupedBy: [:each | each authoringCategory]).
	authorBrickCategories := authorBricks keys sorted.

	
	self beRestoringScrollPosition