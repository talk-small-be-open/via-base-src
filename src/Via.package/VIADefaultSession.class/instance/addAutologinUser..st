accessing
addAutologinUser: aUser

	"double check, robustness"
	aUser isRealUser ifFalse: [ ^ self ].

	autologinUsers ifNil: [ autologinUsers := OrderedCollection new ].
	
	autologinUsers addIfNotPresent: aUser.
	
	aUser installRememberCookie: self requestContext website: self website