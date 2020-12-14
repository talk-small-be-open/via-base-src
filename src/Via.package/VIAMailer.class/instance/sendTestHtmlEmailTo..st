mails
sendTestHtmlEmailTo: aString
	| to body subject htmlBody |
	to := Array with: aString.

	subject := 'via Email-Test'.
	body := String streamContents: [:stream |
		stream nextPutAll: 'TEST TEST TEST'.
		stream crlf; crlf.
		stream nextPutAll: '============================================='.
		stream crlf; crlf.
		stream crlf; nextPutAll: self defaultSignature].

	htmlBody := VIAPluggableComponent new content: [:html |
		html heading: 'TEST TEST TEST'.
		html break; break.
		html horizontalRule.
		html break; break.
		html paragraph: self defaultSignature].

	self sendMailTo: to subject: subject textBody: body htmlBody: htmlBody