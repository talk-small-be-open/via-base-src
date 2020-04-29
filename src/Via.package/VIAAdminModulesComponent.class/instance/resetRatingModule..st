as yet unclassified
resetRatingModule: aModule
	(self confirmYesNo: 'admin:resetRatingForModuleQM') ifTrue: [
		aModule rating reset]