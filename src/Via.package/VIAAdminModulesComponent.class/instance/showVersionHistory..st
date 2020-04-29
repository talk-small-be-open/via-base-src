actions
showVersionHistory: aModule
	self show: ((VIAAdminModuleHistoryComponent module: aModule)
		addBackButton;
		yourself)