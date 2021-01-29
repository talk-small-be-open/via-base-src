actions
editModule: aModule
	selectedModule := aModule.

	aModule ifProduction: [
		aModule isReleased ifTrue: [ self inform: 'CAUTION! This module is released. Do not change relevant data, if your users have begun working on these exercises. Do minor changes only, like typos. Consider creating a new version, if you need to do structural changes.' ]].
	
	self show: ((VIAModuleEditor model: aModule)
		addBackButton;
		yourself) onAnswer: [ self refresh ]