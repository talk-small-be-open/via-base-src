as yet unclassified
findUser
	user := (self wd findUserByEmail: email).
	user ifNil: [self errorMessage: 'forgotPassword:error:userNotFound't]