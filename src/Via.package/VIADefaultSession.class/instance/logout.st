as yet unclassified
logout
	user isRealUser ifTrue: [
		user deleteRememberCookie: self requestContext website: self website ].
	super logout.
	portfolio := nil.
	backgroundAdminUser := nil.