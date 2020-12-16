as yet unclassified
loginUser: aUser
	super loginUser: aUser.

	portfolio := aUser portfolioInWebsite: self website.
	portfolio cleanup