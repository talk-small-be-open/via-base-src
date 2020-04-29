as yet unclassified
sendActivationEmail
	| user |
	user := VIAUser new
		email: email;
		firstName: firstName;
		lastName: lastName;
		password: password;
		yourself.
		
	self wd mailer sendActivationLinkToUser: user