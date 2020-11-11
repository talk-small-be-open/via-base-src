testing
isCookiebarAllowed: aRequestContext
	^ (aRequestContext request cookieAt: 'cookiebar') value = 'CookieAllowed'