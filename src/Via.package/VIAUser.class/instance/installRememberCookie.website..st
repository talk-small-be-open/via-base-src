as yet unclassified
installRememberCookie: aRequestContext website: aWebsite
	| cookieName durationDays |
	
	cookieName := (aWebsite data propertyAt: #login:rememberMe:cookieName ifBlankPut: [UUID new asString36]).
	durationDays := (aWebsite data propertyAt: #login:rememberMe:expireInDays ifBlankPut: [30]).
	
	aRequestContext response addCookie: 
		(aRequestContext newCookie
			key: cookieName;
			value: self rememberToken;
			discard: false;
			secure: true;
			expireIn: durationDays days;
			sameSite: 'Lax'; "Bei Strict würde es nicht gesendet, wenn der Link z.B. in einem Email geklickt wird"
			comment: ('Remember-Cookie of ', aWebsite title);
"TODO					commentUrl: self website url;"
			yourself)	