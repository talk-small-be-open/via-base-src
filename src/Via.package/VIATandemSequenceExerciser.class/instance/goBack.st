actions
goBack
	| next |
	next := stepIndex - 1.
	
	next < 1 ifTrue: [ ^ self ].
	
	self gotoStepIndex: next.

	self triggerP2pSync.