actions
editTask: aTask module: aModule
	| miniAssetsComponent |
	
	selectedModule := aModule.
	
	miniAssetsComponent := VIAAdminMiniAssetsComponent new.
	
	self show: (VIATaskEditor new
		task: aTask;
		module: aModule;
		addDecoration: (VIAAppendDecoration component: miniAssetsComponent);
		yourself)