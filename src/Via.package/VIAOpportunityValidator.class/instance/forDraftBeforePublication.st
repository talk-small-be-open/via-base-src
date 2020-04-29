rulesets
forDraftBeforePublication
	self validatePresence of: #organization.
	self validatePresence of: #titleFieldData; named: #opp:title.
	self validatePresence of: #abstractFieldData; named: #opp:abstract.
	self validatePresence of: #involvements; named: #involvements.
	self validateLabelsArePresent.
	self validateTopicsArePresent.
	self validateTimeframe