actions
send
	failedEmails := self websiteData mailer
		sendMassMailTo: (self recipientEmails copyWith: sentBy email)
		subject: subject
		pillarBody: messagePillar pillarDocument.
		
	sentAt := DateAndTime now