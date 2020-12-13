delivery
sendMailTo: aToCollection subject: subject textBody: body htmlBody: aBlock
	^self sendMailTo: aToCollection cc: #() bcc: #() subject: subject textBody: body htmlBody: aBlock replyTo: nil sender: nil