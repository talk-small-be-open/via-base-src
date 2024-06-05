as yet unclassified
logout
	user isRealUser ifTrue: [
		user useAutologin
			ifTrue: [
				self addAutologinUser: user.
				user installRememberCookie: self requestContext website: self website ]
			ifFalse: [
				self removeAutologinUser: user.
				user deleteRememberCookie: self requestContext website: self website ]
	].

	super logout.
	
	portfolio := nil.
	backgroundAdminUser := nil.
	
	externalUser ifNotNil: [ 
		[ externalUser logout ] ifError: [ "dont care at all" ]
	].