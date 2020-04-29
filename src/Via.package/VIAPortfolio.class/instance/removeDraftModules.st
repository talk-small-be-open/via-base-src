as yet unclassified
removeDraftModules
	self draftModules do: [:each |
		self removeModule: each]