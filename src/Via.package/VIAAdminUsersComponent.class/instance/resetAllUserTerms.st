actions
resetAllUserTerms
	(self confirmYesNo: 'Really reset terms for all (displayed) users?') ifTrue: [
		self users do: [ :each | each termsAccepted: false ]]