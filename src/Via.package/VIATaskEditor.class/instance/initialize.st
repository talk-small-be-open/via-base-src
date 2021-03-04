initialization
initialize
	super initialize.

	self addForm removeButtons.
	
	task := nil.

	
	authorBricks := ((VIATaskBrick allAuthorReady sortedBy: #displayName) groupedBy: [:each | each authoringCategory]).
	authorBrickCategories := authorBricks keys sorted.

	assetsComponent := VIAAdminMiniAssetsComponent new.
	
	self beRestoringScrollPosition