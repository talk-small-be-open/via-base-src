actions
readonlyEditTask: aTask module: aModule
	selectedModule := aModule.
	
	self show: (VIAReadonlyTaskEditView new
		task: aTask;
		addBackButton;
		yourself)