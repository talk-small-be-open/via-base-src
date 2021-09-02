delivery
sendMailTo: aToCollection subject: subject pillarBody: aPillarDocument
	^ self sendMailTo: aToCollection cc: #() bcc: #() subject: subject pillarBody: aPillarDocument replyTo: nil sender: nil