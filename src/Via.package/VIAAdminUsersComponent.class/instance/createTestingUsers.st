actions
createTestingUsers
	| number password |
	number := ((self request: 'Count?') ifNil: [ ^ self ]) asInteger.
	password := (self request: 'Password?') ifNil: [ ^ self ].

	self createTestingUsers: number password: password