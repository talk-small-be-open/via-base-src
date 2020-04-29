as yet unclassified
clickModuleCard: aModule
	self show: ((VIAExamsModuleTeacherComponent model: aModule)
		addBackButton;
		yourself).
