as yet unclassified
createUserPairing: aUser namespace: aNamespaceString
	| token code base |
	token := VIAUserPairingToken newBy: aUser.
	token namespace: aNamespaceString.
	
	base := ($a to: $z), ($1 to: $9).
	code := (1 to: 3) inject: '' into: [ :result :each | result, base atRandom asString ].

	token code: code.

	userPairingTokens add: token.

	^ token