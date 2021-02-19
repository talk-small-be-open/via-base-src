mails
sendUnlockingNotification: aModule to: aUser
	| to body subject |
	to := Array with: aUser email.

	subject := 'Module unlocked'.

	body := String streamContents: [:stream |
		stream nextPutAll: 'An administrator has unlocked a module which was locked by you:'.
		stream crlf; crlf.
		stream nextPutAll: aModule displayName.
		stream crlf; crlf.
		stream crlf; nextPutAll: self defaultSignature].


	^self sendMailTo: to subject: subject body: body