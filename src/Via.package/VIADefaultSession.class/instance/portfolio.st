accessing
portfolio
	portfolio ifNil: [
		"Temporäres Portfolio für anonymen User"
		portfolio := VIAApplicationManager current portfolioClass new
			user: user;
			yourself].
	^portfolio