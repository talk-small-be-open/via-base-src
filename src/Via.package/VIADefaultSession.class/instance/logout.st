as yet unclassified
logout
	user isAnonymous ifFalse: [
		user deleteRememberCookie: self requestContext website: self website ].
	super logout.
	backgroundAdminUser := nil.