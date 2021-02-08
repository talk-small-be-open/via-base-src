as yet unclassified
createInvitationCommandWebsite: aWebsite
	"OPTIMIZE: A little dirty, to store one single command here, for a single website.
	But very practical at the moment"
	invitationCommand := VIAInviteStudentToGroupCommand new
		userGroup: self;
		website: aWebsite;
		store;
		yourself.

	^ invitationCommand