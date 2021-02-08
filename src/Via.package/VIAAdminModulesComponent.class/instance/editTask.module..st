actions
editTask: aTask module: aModule
	| miniAssetsComponent |
	
	selectedModule := aModule.

	self warnBeforeEdit: aModule.
	
	miniAssetsComponent := VIAAdminMiniAssetsComponent new.
	
	self show: (VIATaskEditor new
		task: aTask;
		module: aModule;
		addDecoration: (VIAAppendDecoration component: miniAssetsComponent);
		yourself)