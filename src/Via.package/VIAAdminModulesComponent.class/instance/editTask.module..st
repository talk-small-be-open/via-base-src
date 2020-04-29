actions
editTask: aTask module: aModule
	selectedModule := aModule.
	
	self call: (VIATaskEditor new
		task: aTask;
		module: aModule;
		yourself)
