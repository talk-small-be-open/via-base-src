public
addKey: aString toUrl: aUrl
	| cookieAllowed hasCookie |

	"Only add a query field if there isn't already a cookie"

	cookieAllowed := self isCookiebarAllowed: self requestContext.
	hasCookie := true.

	self
		cookieFromContext: self requestContext
		ifAbsent: [ hasCookie := false ].

	(cookieAllowed not or: [ hasCookie not]) ifTrue: [
		"Add session number to URL (instead of Cookie)"
		self addQueryFieldWithValue: aString to: aUrl ]