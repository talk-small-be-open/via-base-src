as yet unclassified
sendChangePasswordLink
	(self confirmYesNo: 'myProfile:wantToChangePasswordQM') ifTrue: [
		self wd mailer sendSetNewPasswordLinkForUser: user.
		self inform: 'myProfile:passwordChangeLinkSent']