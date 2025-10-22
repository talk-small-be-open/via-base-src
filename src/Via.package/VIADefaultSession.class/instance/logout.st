as yet unclassified
logout
	| theLoggedOutUser |
	theLoggedOutUser := user.
	
	super logout.

	self removeAutologinUser: theLoggedOutUser.
	
	portfolio := nil.
	backgroundAdminUser := nil.
	
	externalUser ifNotNil: [ 
		[ externalUser logout ] ifError: [ "dont care at all" ]
	].