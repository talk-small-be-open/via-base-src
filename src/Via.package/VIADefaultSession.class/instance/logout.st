as yet unclassified
logout
	user isRealUser ifTrue: [
		user deleteRememberCookie: self requestContext website: self website ].
	super logout.
	
	portfolio := nil.
	backgroundAdminUser := nil.
	
	externalUser ifNotNil: [ 
		[externalUser logout] ifError: [ "dont care at all" ]
	].