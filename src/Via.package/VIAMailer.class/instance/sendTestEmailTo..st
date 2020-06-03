mails
sendTestEmailTo: aString
	| to body subject |
	to := Array with: aString.

	subject := 'via Email-Test'.
	body := String streamContents: [:stream |
		stream nextPutAll: 'TEST TEST TEST'.
		stream crlf; crlf.
		stream nextPutAll: '============================================='.
		stream crlf; crlf.
		stream crlf; nextPutAll: self defaultSignature].


	^self sendMailTo: to subject: subject body: body