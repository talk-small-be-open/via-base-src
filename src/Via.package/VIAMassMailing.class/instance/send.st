actions
send
	failedEmails := self websiteData mailer
		sendMassMailTo: self recipientEmails
		subject: subject
		pillarBody: messagePillar pillarDocument.
		
	sentAt := DateAndTime now