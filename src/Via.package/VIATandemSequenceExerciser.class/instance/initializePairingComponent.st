actions
initializePairingComponent
	| namespace |
	namespace := ('tandem_', taskBrick uuidString).
		
	pairingComponent ifNotNil: [ ^ self ].
		
	pairingComponent := self ifPlayer1: [
		VIAUserPairingPassiveComponent data: self namespace: namespace.
	] else: [
		VIAUserPairingActiveComponent data: self namespace: namespace].
	
	pairingComponent onAnswer: [:pairingToken |
		pairingToken
			ifNil: [ self restart ]
			ifNotNil: [ self pairingFinished ] ]