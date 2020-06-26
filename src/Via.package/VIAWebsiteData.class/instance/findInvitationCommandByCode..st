as yet unclassified
findInvitationCommandByCode: aCodeString
	^ applicationCommands values
		detect: [ :each | (each isKindOf: VIAApplicationCommand) and: [ each invitationCode = aCodeString ] ]
		ifNone: [ nil ].