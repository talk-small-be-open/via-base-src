accessing
portfolio
	portfolio ifNil: [
		"Temporäres Portfolio für anonymen User"
		portfolio := VIAPortfolio new
			user: user;
			yourself].
	^portfolio