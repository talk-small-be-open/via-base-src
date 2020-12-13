as yet unclassified
failedEmailsCount
	failedEmails ifNil: [ ^ 0 ].
	
	^ failedEmails size