delivery
sendMailTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: subject pillarBody: aPillarDocument replyTo: aReplyEmailString sender: aWAEmailAddress

	| textBody htmlBody |
	
	textBody := VIAPrTextWriter write: aPillarDocument.

	htmlBody := VIAPluggableComponent new content: [:html |
		html pillar: aPillarDocument.
	].
	
	
	^ self sendMailTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: subject textBody: textBody htmlBody: htmlBody replyTo: aReplyEmailString sender: aWAEmailAddress