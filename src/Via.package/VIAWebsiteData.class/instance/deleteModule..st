as yet unclassified
deleteModule: aModule
	self db addToTrash: aModule.
	self removeModule: aModule.
	aModule afterDeletion
