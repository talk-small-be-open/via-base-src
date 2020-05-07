actions
readonlyEditTask: aTask module: aModule
	selectedModule := aModule.
	
	self call: (VIAReadonlyTaskEditView new
		task: aTask;
		addBackButton;
		yourself)