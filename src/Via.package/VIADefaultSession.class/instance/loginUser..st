as yet unclassified
loginUser: aUser
	
	super loginUser: aUser.

	aUser noteSuccessfulLogin.

	"Install/renew remember cookie, if user has it in settings"
	aUser useAutologin ifTrue: [
		self addAutologinUser: aUser
	].
	
	(self wd propertyAt: #login:appClient:track ifAbsentPut: [ false ]) ifTrue: [
		appClient := aUser findOrCreateAppClientByRequest: self requestContext website: self website
	].

	portfolio := aUser portfolioInWebsite: self website.
	portfolio cleanup.
	
	isBeta := aUser isBetatesterForWebsite: self website.