actions
setEmailFor: aUser
	| email |
	email := self request: 'New email' default: aUser email.
	email ifNotBlank: [
		aUser email: email]