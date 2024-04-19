initialization
initialize
	super initialize.
	
	createdAt := DateAndTime now.
	id := UUID new asString36.