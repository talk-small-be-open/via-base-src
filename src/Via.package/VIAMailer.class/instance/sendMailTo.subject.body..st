delivery
sendMailTo: aToCollection subject: subject body:  body
	^self sendMailTo: aToCollection cc: #() bcc: #() subject: subject body: body replyTo: nil sender: nil
