initialization
initialize
	super initialize.

	self addForm removeButtons.
	
	task := nil.

	
	authorBricks := (((VIATaskBrick allSubclasses select: #isAuthorReady) sortedBy: #displayName) groupedBy: [:each | each authoringCategory]).
	authorBrickCategories := authorBricks keys sorted.

	assetsComponent := VIAAdminMiniAssetsComponent new.
	
	self beRestoringScrollPosition