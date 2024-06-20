accessing
addAutologinUser: aUser

	autologinUsers ifNil: [ autologinUsers := OrderedCollection new ].
	
	autologinUsers addIfNotPresent: aUser