as yet unclassified
deleteModule: aModule
	(self confirmYesNo: 'admin:deleteModuleQM') ifTrue: [
		self wd deleteModule: aModule]