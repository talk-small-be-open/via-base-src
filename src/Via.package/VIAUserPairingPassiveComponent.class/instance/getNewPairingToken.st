as yet unclassified
getNewPairingToken
	pairingToken := self db createUserPairing: self currentUser namespace: namespace.
	pairingToken pairingData: data.
	
	^ pairingToken