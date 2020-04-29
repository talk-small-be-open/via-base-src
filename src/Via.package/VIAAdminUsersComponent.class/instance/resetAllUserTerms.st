actions
resetAllUserTerms
	self wd users do: [ :each | each termsAccepted: false ]