mails
sendDeleteAccountLinkForUser: aUser
	| to body subject pillar |
	to := Array with: aUser email.

	subject := 'mailer:deleteAccount:subject't.
	body := String streamContents: [:s |
		s << (self dearUser: aUser).
		s lf; lf.
		s << 'mailer:deleteAccount:clickToDeleteAccount't.
		s lf; lf.
		s << $*.
		s << (aUser onetimeDeleteAccountUrlForWebsite: website).
		s << $*.
		s lf; lf.
		s << self defaultSignaturePillar].

	pillar := VIAHelper pillarFromPillarString: body.

	^ self sendMailTo: to subject: subject pillarBody: pillar