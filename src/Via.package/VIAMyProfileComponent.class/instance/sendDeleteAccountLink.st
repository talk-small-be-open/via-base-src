as yet unclassified
sendDeleteAccountLink
	(self confirmYesNo: 'myProfile:wantToDeleteAccountQM') ifTrue: [
		self wd mailer sendDeleteAccountLinkForUser: user.
		self inform: 'myProfile:accountDeletionLinkSent']