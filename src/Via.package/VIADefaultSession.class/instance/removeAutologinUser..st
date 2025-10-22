accessing
removeAutologinUser: aUser

	"double check, robustness"
	aUser isRealUser ifFalse: [ ^ self ].

	autologinUsers ifNotBlank: [ autologinUsers remove: aUser ifAbsent: [  ] ].
	
	aUser deleteRememberCookie: self requestContext website: self website