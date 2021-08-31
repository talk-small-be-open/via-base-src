mails
sendActivationLinkToUser: aUser
	| to pillar string subject |
	to := Array with: aUser email.

	subject := 'mailer:sendActivationLink:subject't.
	string := String streamContents: [:stream |
		stream nextPutAll: 'mailer:sendActivationLink:info't.
		stream lf.
		stream nextPutAll: '_'.
		stream lf.
		stream nextPutAll: (aUser onetimeActivationUrlForWebsite: website).
		stream lf.
		stream nextPutAll: '_'.
		stream lf.
		stream lf; nextPutAll: self defaultSignature].

	pillar := VIAHelper pillarFromPillarString: string.

	^ self sendMailTo: to subject: subject pillarBody: pillar