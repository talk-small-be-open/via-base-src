mails
sendSetNewPasswordLinkForUser: aUser
	| to body subject pillar |
	to := Array with: aUser email.

	subject := 'mailer:setNewPassword:subject't.
	body := String streamContents: [:s |
		s << (self dearUser: aUser).
		s lf; lf.
		s << 'mailer:setNewPassword:clickToSetNewPassword't.
		s lf; lf.
		s << $*.
		s << (aUser onetimeSetNewPasswordUrlForWebsite: website).
		s << $*.
		s lf; lf.
		s << self defaultSignaturePillar].

	pillar := VIAHelper pillarFromPillarString: body.

	^ self sendMailTo: to subject: subject pillarBody: pillar