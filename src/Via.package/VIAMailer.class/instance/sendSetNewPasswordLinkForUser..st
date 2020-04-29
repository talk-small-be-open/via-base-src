mails
sendSetNewPasswordLinkForUser: aUser
	| to body subject |
	to := Array with: aUser email.

	subject := 'mailer:setNewPassword:subject't.
	body := String streamContents: [:stream |
		stream nextPutAll: (self dearUser: aUser).
		stream crlf; crlf.
		stream nextPutAll: 'mailer:setNewPassword:clickToSetNewPassword't.
		stream crlf; crlf.
		stream nextPutAll: (aUser onetimeSetNewPasswordUrlForWebsite: website).
		stream crlf; crlf.
		stream crlf; nextPutAll: self defaultSignature].

	self sendMailTo: to subject: subject body: body