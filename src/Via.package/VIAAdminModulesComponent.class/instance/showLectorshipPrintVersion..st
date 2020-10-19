as yet unclassified
showLectorshipPrintVersion: aModule
	| printer |
	printer := VIALectorshipPrintModuleExerciser model: aModule.
	printer addBackButton.
	self show: printer