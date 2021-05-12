as yet unclassified
tryPairByCode: aString
	errorMessage := nil.
	
	pairingToken := self db findUserPairingByCode: aString namespace: namespace.
	pairingToken
		ifNil: [ errorMessage := 'userPairing:pairingNotValid' ]
		ifNotNil: [ 
			pairingToken pairWithUser: self currentUser data: data]