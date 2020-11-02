as yet unclassified
findInvitationCommandByCode: aCodeString
	^ applicationCommands values detect: [ :each |
		each isExecutable and: [
		(each isKindOf: VIAInvitationCommand) and: [
		each invitationCode = aCodeString ] ] ]
	ifNone: [ nil ]