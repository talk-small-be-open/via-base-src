as yet unclassified
loadAdmin: anEmail password: aPassword

	self db websiteDatasDo: [ :each |
		| admin |
		admin := VIAUser new
			firstName: 'Admin';
			lastName: 'Admin';
			email: anEmail;
			password: aPassword;
			beAdmin;
			yourself.
			
		each addUser: admin
	 ]