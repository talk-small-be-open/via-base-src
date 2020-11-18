actions
goBack
	| next |
	next := stepIndex - 1.
	
	next < 1 ifTrue: [ ^ self ].
	
"	next = 1
		ifTrue: [ self restart ]
		ifFalse: [ self gotoQAndA: currentQAndACounter ]."

	self gotoStepIndex: next.

	self triggerP2pSync.