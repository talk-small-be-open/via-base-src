initialization
pairingToken
	^ pairingToken ifNil: [self getNewPairingToken]