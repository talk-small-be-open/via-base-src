initialization
initialize

	super initialize.
	
	self clearCachedUiTexts.
	self initializeAnonymousUser.

	loginMethod := nil
