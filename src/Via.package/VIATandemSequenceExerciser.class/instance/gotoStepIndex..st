actions
gotoStepIndex: anInteger

	stepIndex = anInteger ifTrue: [ ^ self ].
	
	stepIndex := anInteger asInteger.

	self ifPlayer1: [ pairingToken ifNotNil: [pairingToken prolong: 20 minutes] ].

	self currentStep = #summary ifTrue: [
		self check.
		self stopP2p.
	].
	
	self currentStep isInteger ifTrue: [
		self gotoQAndA: self currentStep ]