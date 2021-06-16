actions
createNewModuleVersion: aModule
	selectedModule := aModule createNewVersion.
	self flashMessage: 'New version created as DRAFT!'.
	self refresh