as yet unclassified
cookieLogin: aRequest
	| user cookieName |
	
	cookieName := self wd propertyAt: #login:rememberMe:cookieName.

	cookieName ifBlank: [ ^ self ].
		
	"Allenfalls auto-login durch remember-me cookie"
	(aRequest cookieAt: cookieName) ifNotNil: [:cookie |
		user := self wd findUserByRememberToken: cookie value.
		user ifNotNil: [ self session loginUser: user ]
	].