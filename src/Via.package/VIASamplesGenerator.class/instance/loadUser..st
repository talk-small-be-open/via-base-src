as yet unclassified
loadUser: aWebsite
	| email |
	email := 'petra.testmann@test.ch.fake'.
	user := aWebsite data findUserByEmail: email.
	
	user ifNil: [
		user := (VIAUser new
			firstName: 'Petra';
			lastName: 'Testmann';
			email: email;
			yourself).
		aWebsite data addUser: user.

		portfolio := VIAPortfolio new
			user: user;
			yourself.
		
		aWebsite data addPortfolio: portfolio].

	portfolio := aWebsite data findOrCreatePortfolioByUser: user.