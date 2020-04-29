rulesets
forBatchImport
	self validatePresence of: #organization.
	self validatePresence of: #titleFieldData; named: #opp:title.
"	self validatePresence of: #abstractFieldData; named: #opp:abstract."
	self validateLabelsArePresent.
"	self validateTopicsArePresent."
"	self validateDescriptionField"