as yet unclassified
tryAutoPairSilent: aBoolean
	| me foundToken |

	errorMessage := nil.

"	pairingToken ifNil: ["
	me := self currentUser.
	foundToken := self db findUserPairingByInvitedUser: me namespace: namespace.
	foundToken
		ifNil: [ aBoolean ifFalse: [self inform: 'userPairing:autoPairNobodyFound'] ]
		ifNotNil: [
		"Not 100% sure if we have the real token, so we double proof it,
		by pairing by code"
		"pairingToken pairWithUser: me data: data"
		self tryPairByCode: foundToken code
		]