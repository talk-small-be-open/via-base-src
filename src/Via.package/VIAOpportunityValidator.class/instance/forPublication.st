rulesets
forPublication
	self forDraftBeforePublication.
	self validationGroup: [
		self validatePresence of: #hosts; named: #host.
		self validateLabelsAllowed].
	self validateDescriptionField