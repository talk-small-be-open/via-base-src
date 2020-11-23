actions
iamPlayerNumber: aNumber
	playerNumber := aNumber.
	
"	(playerNumber = 1 and: [ taskBrick shuffleSequence ]) ifTrue: [ self ensureRandomCode ]."
	
	pairingComponent := self ifPlayer1: [
		VIAUserPairingPassiveComponent data: self.
	] else: [
		VIAUserPairingActiveComponent data: self ].
	
	pairingComponent namespace: ('tandem_', taskBrick uuidString).
	
	pairingComponent onAnswer: [:pairingToken |
		pairingToken
			ifNil: [ self restart ]
			ifNotNil: [ self pairingFinished ] ]