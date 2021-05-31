as yet unclassified
loginUser: aUser
	super loginUser: aUser.

	aUser noteSuccessfulLogin.

	portfolio := aUser portfolioInWebsite: self website.
	portfolio cleanup.
	
	isBeta := aUser isBetatesterForWebsite: self website.