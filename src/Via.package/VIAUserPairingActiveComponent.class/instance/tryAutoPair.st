as yet unclassified
tryAutoPair
	pairingToken ifNil: [
		| me foundToken |
		me := self currentUser.
		foundToken := self db findUserPairingByInvitedUser: me namespace: namespace.
		foundToken ifNotNil: [
			"Not 100% sure if we have the real token, so we double proof it,
			by pairing by code"
			"pairingToken pairWithUser: me data: data"
			self tryPairByCode: foundToken code
			] ]