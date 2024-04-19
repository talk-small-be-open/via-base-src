as yet unclassified
loginUser: aUser
	
	super loginUser: aUser.

	aUser noteSuccessfulLogin.
	
	(self wd propertyAt: #login:appClient:track ifAbsentPut: [ false ]) ifTrue: [
		appClient := aUser findOrCreateAppClientByRequest: self requestContext website: self website
	].

	portfolio := aUser portfolioInWebsite: self website.
	portfolio cleanup.
	
	isBeta := aUser isBetatesterForWebsite: self website.