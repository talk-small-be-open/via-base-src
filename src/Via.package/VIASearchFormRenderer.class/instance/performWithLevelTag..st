actions
performWithLevelTag: aLevelTag
	self ifSimpleSearch: [
		query clear].
	query moduleClassification levelTag: aLevelTag.
	self performSearch