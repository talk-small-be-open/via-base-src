mails
sendActivationLinkToUser: aUser
	| to body subject |
	to := Array with: aUser email.

	subject := 'mailer:sendActivationLink:subject't.
	body := String streamContents: [:stream |
		stream nextPutAll: 'mailer:sendActivationLink:info't.
		stream crlf; crlf.
		stream nextPutAll: '============================================='.
		stream crlf.
		stream nextPutAll: (aUser onetimeActivationUrlForWebsite: website).
		stream crlf.
		stream nextPutAll: '============================================='.
		stream crlf; crlf.
		stream crlf; nextPutAll: self defaultSignature].


	^self sendMailTo: to subject: subject body: body