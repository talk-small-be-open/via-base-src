as yet unclassified
setPassword
	| password |
	password := self request: 'New password?'.
	password ifNotBlank: [
		model password: password].