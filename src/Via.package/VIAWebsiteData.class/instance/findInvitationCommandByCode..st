finders
findInvitationCommandByCode: aCodeString
	aCodeString ifBlank: [ ^ nil ].

	^ applicationCommands values detect: [ :each |
		each isExecutable and: [
		(each isKindOf: VIAInvitationCommand) and: [
		each matchesCode: aCodeString ] ] ]
	ifNone: [ nil ]