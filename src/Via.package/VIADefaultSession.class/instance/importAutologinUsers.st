as yet unclassified
importAutologinUsers
	| prefix autologinCookies |

	prefix := self wd propertyAt: #login:rememberMe:cookieName.

	prefix ifBlank: [ ^ self ].
		
	autologinCookies := ( self requestContext request cookies select: [ :each | each key beginsWith: prefix ] ).

	autologinUsers := 	autologinCookies collectNonBlank: [ :each |
		| eachUser |	
		eachUser := self wd findUserByRememberToken: each value.
		(eachUser notNil and: [ eachUser useAutologin ]) ifTrue: [ eachUser ] ifFalse: [ nil ].
	].

	self autologinUsers: autologinUsers.
