testing
isCookiebarAllowed: aRequestContext
	"Check if the cookie consent has been OKed and therefore a confirmation cookie exists"
	"Uses https://cookie-bar.eu"
	^ (aRequestContext request cookieAt: 'cookiebar') value = 'CookieAllowed'