actions
initializePairingComponent
	
	pairingComponent ifNotNil: [ ^ self ].
		
	pairingComponent := self ifPlayer1: [
		VIAUserPairingPassiveComponent data: self.
	] else: [
		VIAUserPairingActiveComponent data: self ].
	
	pairingComponent namespace: ('tandem_', taskBrick uuidString).
	
	pairingComponent onAnswer: [:pairingToken |
		pairingToken
			ifNil: [ self restart ]
			ifNotNil: [ self pairingFinished ] ]