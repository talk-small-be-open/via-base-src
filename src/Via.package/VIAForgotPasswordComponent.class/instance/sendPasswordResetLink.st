actions
sendPasswordResetLink
	user ifNotNil: [
		self wd mailer sendSetNewPasswordLinkForUser: user]