as yet unclassified
testPassword
	| password |
	password := self request: 'What is the password?'.
	password ifNotBlank: [
		(model isValidPassword: password)
			ifTrue: [self inform: 'Correct!'] ifFalse: [self inform: 'Wrong!']
	].