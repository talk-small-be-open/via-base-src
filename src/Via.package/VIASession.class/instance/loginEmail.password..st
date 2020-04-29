as yet unclassified
loginEmail: anEmail password: aPassword

	| loginUser |
	
	loginUser := self wd findUserByEmail: anEmail.
	
	loginUser ifNotNil: [
		(loginUser isValidPassword: aPassword) ifTrue: [
			self loginUser: loginUser.
			^true].
	].

	^false