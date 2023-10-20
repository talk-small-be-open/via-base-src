as yet unclassified
noteSuccessfulLogin
	lastLoginAt := DateAndTime now.
	loginCount := (loginCount ifNil: [ 0 ]) + 1