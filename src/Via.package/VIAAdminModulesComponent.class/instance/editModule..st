actions
editModule: aModule
	selectedModule := aModule.
	self show: ((VIAModuleEditor model: aModule)
		addBackButton;
		yourself)