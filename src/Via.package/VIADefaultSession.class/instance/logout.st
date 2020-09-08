as yet unclassified
logout
	user deleteRememberCookie: self requestContext website: self website.
	super logout.
	backgroundAdminUser := nil.