as yet unclassified
deleteRememberCookie: aRequestContext website: aWebsite
	| cookieName cookie |

	self clearRememberToken.
		
	cookieName := aWebsite data propertyAt: #login:rememberMe:cookieName.

	cookieName ifBlank: [ ^ self ].
	
	cookie := (aRequestContext request cookieAt: cookieName).
	cookie ifNotNil: [
		aRequestContext response deleteCookie: cookie
	]