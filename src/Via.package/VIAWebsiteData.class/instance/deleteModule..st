as yet unclassified
deleteModule: aModule
	self addToTrash: aModule.
	self removeModule: aModule.
	aModule afterDeletion