as yet unclassified
clearPassword
	(self confirmYesNo: 'Clear local password?') ifTrue: [
		model clearPassword].