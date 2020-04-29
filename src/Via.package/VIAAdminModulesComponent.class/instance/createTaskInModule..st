actions
createTaskInModule: aModule
	| task |
	task := VIACompositeTask new.
	aModule addTask: task.
	
	self editTask: task module: aModule