actions
readonlyEditTask: aTask module: aModule
	selectedModule := aModule.
	
	self show: (VIAReadonlyTaskEditView new
		module: aModule;
		task: aTask;
		addBackButton;
		yourself)