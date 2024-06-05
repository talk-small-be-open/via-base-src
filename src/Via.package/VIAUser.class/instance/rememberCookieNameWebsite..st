accessing
rememberCookieNameWebsite: aWebsite
	| baseName |
	baseName := ( aWebsite data propertyAt: #login:rememberMe:cookieName ifBlankPut: [ UUID new asString36 ] ).

	^ baseName, '_', self rememberToken
