actions
sendTestTo: anEmailString
	failedEmails := self websiteData mailer
		sendMassMailTo: { anEmailString }
		subject: '*TEST*TEST*TEST* ', subject
		pillarBody: messagePillar pillarDocument