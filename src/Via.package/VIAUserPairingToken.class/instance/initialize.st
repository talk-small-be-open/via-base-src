initialization
initialize
	super initialize.
	createdAt := DateAndTime now.
	expiresAt := createdAt + 3 minutes.
	
	self createCode