as yet unclassified
tryPairByCode: aString

	pairingToken := self db findUserPairingByCode: aString namespace: namespace.
	pairingToken ifNotNil: [ 
		pairingToken pairWithUser: self currentUser data: data]