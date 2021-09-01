mails
sendActivationLinkToUser: aUser
	| to pillar string subject |
	to := Array with: aUser email.

	subject := 'mailer:sendActivationLink:subject't.
	string := String streamContents: [:s |
		s << (self dearUser: aUser).
		s lf; lf.
		s nextPutAll: 'mailer:sendActivationLink:info't.
		s lf; lf.
		s << '*'.
		s nextPutAll: (aUser onetimeActivationUrlForWebsite: website).
		s << '*'.
		s lf; lf.
		s << self defaultSignaturePillar].

	pillar := VIAHelper pillarFromPillarString: string.

	^ self sendMailTo: to subject: subject pillarBody: pillar