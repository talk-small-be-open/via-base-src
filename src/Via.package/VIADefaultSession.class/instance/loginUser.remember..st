as yet unclassified
loginUser: aUser remember: aBoolean
	self loginUser: aUser.

	aBoolean ifTrue: [
		aUser installRememberCookie: self requestContext website: self website
	]