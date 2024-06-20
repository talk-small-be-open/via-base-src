as yet unclassified
deleteRememberCookie: aRequestContext website: aWebsite
	| cookieName cookie |

	cookieName := self rememberCookieNameWebsite: aWebsite.
	self clearRememberToken.

	cookieName ifBlank: [ ^ self ].
	
	cookie := (aRequestContext request cookieAt: cookieName).
	cookie ifNotNil: [
		| copy |

"		aRequestContext response deleteCookie: cookie"
		"Since we stick to the /-root path, we have to do it on our own"
		
		copy := (WACookie 
			key: cookie key
			value: '')
			pathUnencoded: cookie pathUnencoded encoded: cookie pathEncoded;
			version: cookie version;
			domain: cookie domain;
			expireInPast;
			yourself.

		aRequestContext response addCookie: copy		
		
	]