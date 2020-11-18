actions
goAhead
	| next |
	next := stepIndex + 1.
	(next > sequence size) ifTrue: [ ^ self ].

	self gotoStepIndex: next.
	
	self triggerP2pSync.
