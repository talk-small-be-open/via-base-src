as yet unclassified
installRememberCookie: aRequestContext website: aWebsite
	| cookieName durationDays |
	
	cookieName := self rememberCookieNameWebsite: aWebsite.
	durationDays := (aWebsite data propertyAt: #login:rememberMe:expireInDays ifBlankPut: [30]).
	
	aRequestContext response addCookie: 
		(aRequestContext newCookie
			path: '/'; "so that we dont get duplicates once / and once /app"
			key: cookieName;
			value: self rememberToken;
			discard: false;
			secure: true;
			httpOnly: true;
			expireIn: durationDays days;
			sameSite: 'Lax'; "Bei Strict würde es nicht gesendet, wenn der Link z.B. in einem Email geklickt wird"
			comment: ('Remember-Cookie of ', aWebsite title);
			yourself)	