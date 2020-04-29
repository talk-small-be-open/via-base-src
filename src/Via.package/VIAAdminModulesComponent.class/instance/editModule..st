actions
editModule: aModule
	selectedModule := aModule.
	self call: ((VIAModuleEditor model: aModule)
		addBackButton;
		yourself)