mails
sendDeleteAccountLinkForUser: aUser
	| to body subject |
	to := Array with: aUser email.

	subject := 'mailer:deleteAccount:subject't.
	body := String streamContents: [:stream |
		stream nextPutAll: (self dearUser: aUser).
		stream crlf; crlf.
		stream nextPutAll: 'mailer:deleteAccount:clickToDeleteAccount't.
		stream crlf; crlf.
		stream nextPutAll: (aUser onetimeDeleteAccountUrlForWebsite: website).
		stream crlf; crlf.
		stream crlf; nextPutAll: self defaultSignature].

	self sendMailTo: to subject: subject body: body