as yet unclassified
downloadRecipients
	| file |
	file := self generateRecipientsCsvFile.
	self sendFileToBrowser: file named: 'mailing_recipients.csv'