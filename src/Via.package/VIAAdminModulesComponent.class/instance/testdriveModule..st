actions
testdriveModule: aModule
	| url |
	url := VIAHelper testdriveUrlForBlock: [:component |
		component testdriveModule: aModule].
	self requestContext redirectTo: url.