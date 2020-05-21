actions
editTask: aTask module: aModule
	selectedModule := aModule.
	
	self show: (VIATaskEditor new
		task: aTask;
		module: aModule;
		yourself)