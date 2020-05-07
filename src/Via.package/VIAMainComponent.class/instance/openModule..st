actions
openModule: aModule

	"Hinweis: Neuerdings gibt es URL mit Versionsnummer, um auch drafts testen zu können.
	aModule isReleased ifFalse: [^self]."

	self currentPortfolio addModule: aModule.

	self coreComponentWithBackButton: (VIAModuleExerciser smartFromModule: aModule).