initialization
initialize
	super initialize.
	
	invitationCode := code hash asString first: 6.
	invitationCode := (invitationCode first: 3), '-', (invitationCode last: 3).