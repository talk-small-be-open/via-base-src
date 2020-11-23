initialization
pairingToken
	^ pairingToken ifNil: [
		pairingToken := self db createUserPairing: self currentUser namespace: namespace.
		pairingToken pairingData: data ].
