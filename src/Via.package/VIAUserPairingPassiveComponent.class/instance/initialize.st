initialization
initialize
	super initialize.

	lastPairedUser ifNotNil: [ self inviteUser: lastPairedUser ]