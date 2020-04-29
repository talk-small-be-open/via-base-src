as yet unclassified
deleteTask: aTask inModule: aModule
	(self confirmYesNo: 'admin:deleteTaskQM') ifTrue: [
		aModule removeTask: aTask]