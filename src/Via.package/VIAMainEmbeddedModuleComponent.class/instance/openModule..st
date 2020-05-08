as yet unclassified
openModule: aModule
	| component |
	
	"Double Check. Nicht-veröffentlichtes Modul?"
	aModule isReleased ifFalse: [^self].

	"self currentPortfolio addModule: aModule."

	self isLoggedIn
		ifTrue: [component := (VIAEmbeddedModuleExerciser fromModule: aModule)]
		ifFalse: [component := (VIAEmbeddedPreviewModuleExerciser fromModule: aModule)].

	self coreComponent: component onAnswer: [self restart].