rendering
renderInstructionsOn: html
	html heading level3; with: 'Instructions'.
	html unorderedList: [
		html listItem: 'At the top of the message, your logo will be placed'.
		html listItem: 'At the bottom of the message, there will be a link to unsubscribe to these mass mails.'.
		html listItem: 'Besides that, there will be no additional content added automatically. Your email message should contain everything, from salutation to signature'.
		html listItem: 'You will be added as a recipient.'.
		html listItem: ('The sender email address will be ', self senderEmail).
		html listItem: ('The reply-to email address will be ', self replyEmail).
		html listItem: [
			html text: 'Delivery failure notice emails will go to postmaster@'.
			html text: self website domain.
			html text: '. Ensure you read it periodically ("Bounced emails")'.
	]]