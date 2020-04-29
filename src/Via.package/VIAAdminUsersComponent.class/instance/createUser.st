actions
createUser
	| user editor |
	user := VIAUser new.
	
	editor := VIAUserEditor model: user.
	
	self show: editor onAnswer: [:answer |
		answer ifNotNil: [
			(self wd findUserByEmail: user email)
				ifNil: [self wd addUser: user]
				ifNotNil: [self inform: 'User-Email already exists'].
	]]