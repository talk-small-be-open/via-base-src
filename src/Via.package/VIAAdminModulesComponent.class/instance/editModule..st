actions
editModule: aModule
	selectedModule := aModule.

	self warnBeforeEdit: aModule.
	
	self show: ((VIAModuleEditor model: aModule)
		addBackButton;
		yourself) onAnswer: [ self refresh ]