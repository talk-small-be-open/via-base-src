mails
sendToAdminsHealthCheckWarnings: aCollectionOfStrings
	| to body subject |
	to := self websiteData admins collect: [ :each | each email ].

	subject := 'Health check warnings'.

	body := String streamContents: [:stream |
		stream nextPutAll: 'Dear Administrator. There have been found some health check warnings on your site:'.
		stream crlf; crlf.
		aCollectionOfStrings do: [ :each |
			stream nextPutAll: each.
			stream crlf ].
		stream crlf; nextPutAll: self defaultSignatureAutomatic].


	^ self sendMailTo: to subject: subject body: body