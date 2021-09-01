delivery
sendMailTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: subject pillarBody: aPillarDocument replyTo: aReplyEmailString sender: aWAEmailAddress

	| textBody htmlBody |
	
	textBody := VIAPrTextWriter write: aPillarDocument.

	htmlBody := (VIAHtmlEmailComponent website: website)
		mainPillar: aPillarDocument;
		yourself.
	
	
	^ self sendMailTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: subject textBody: textBody htmlBody: htmlBody replyTo: aReplyEmailString sender: aWAEmailAddress