as yet unclassified
unpair
	pairingToken ifNotNil: [

		"We also cancel the invitation, if any, so that there will be no autopair confusion"
		pairingToken invitedUser: nil.

		pairingToken unpair ]