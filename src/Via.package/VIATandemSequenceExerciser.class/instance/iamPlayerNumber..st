as yet unclassified
iamPlayerNumber: aNumber
	playerNumber := aNumber.
	
"	(playerNumber = 1 and: [ taskBrick shuffleSequence ]) ifTrue: [ self ensureRandomCode ]."
	
	pairingComponent := self ifPlayer1: [
		VIAUserPairingPassiveComponent new
	] else: [
		VIAUserPairingActiveComponent new ].
	
	pairingComponent namespace: ('tandem_', taskBrick uuidString).
	
	pairingComponent onAnswer: [:pairingToken |
		self pairingFinished ]