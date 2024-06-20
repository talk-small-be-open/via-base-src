accessing
removeAutologinUser: aUser

	autologinUsers ifNotBlank: [ autologinUsers remove: aUser ifAbsent: [  ] ]