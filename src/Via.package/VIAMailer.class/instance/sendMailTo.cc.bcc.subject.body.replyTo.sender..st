delivery
sendMailTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: subject body: body replyTo: aReplyEmailString sender: aWAEmailAddress
	self
		sendMailTo: aToCollection
		cc: aCcCollection
		bcc: aBccCollection
		subject: subject
		textBody: body
		htmlBody: nil
		replyTo: aReplyEmailString
		sender: aWAEmailAddress