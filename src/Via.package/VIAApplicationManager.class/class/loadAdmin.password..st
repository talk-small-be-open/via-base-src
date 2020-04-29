as yet unclassified
loadAdmin: anEmail password: aPassword

	self db websiteDatasDo: [ :each |
		| admin |
		admin := VIAUser new
			email: anEmail;
			password: aPassword;
			beAdmin;
			yourself.
			
		each addUser: admin
	 ]