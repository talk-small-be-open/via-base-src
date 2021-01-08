actions
createTestingUsers: anInteger password: aPassword

	self deleteTestingUsers.

	1 to: anInteger do: [ :each |
		| pseudoEmail user |
		pseudoEmail := 'testo.testman', each asString, self testUserDomain.

		user := VIAUser new.
		user
			firstName: 'Testo';
			lastName: 'Testman', each asString;
			email: pseudoEmail;
			termsAccepted: true;
			password: aPassword.
	
		self wd addUser: user].
	
	self flashMessage: 'Test users created with domain ', self testUserDomain
