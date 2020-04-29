as yet unclassified
testPassword
	| password |
	password := self request: 'What is the password?'.
	password ifNotBlank: [
		(model isValidPassword: password)
			ifTrue: [self inform: 'Korrekt!'] ifFalse: [self inform: 'Falsch!']
	].