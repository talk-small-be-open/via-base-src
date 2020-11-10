actions
resetAllUserTerms
	(self confirmYesNo: 'Really?') ifTrue: [
		self wd users do: [ :each | each termsAccepted: false ]]