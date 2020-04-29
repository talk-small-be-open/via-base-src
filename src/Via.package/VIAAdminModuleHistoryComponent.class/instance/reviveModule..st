actions
reviveModule: aModule
	aModule beDraft.
	self wd addModule: aModule.
	self flashMessage: 'Module is back in the modules list again'