private
addCookieWithValue: aString to: aRequestContext
	"Only if cookie consent is OK"
	(self isCookiebarAllowed: aRequestContext) ifTrue: [
		super addCookieWithValue: aString to: aRequestContext ]