rendering
renderInstructionsOn: html
	html heading level3; with: 'Instructions'.
	html unorderedList: [
		html listItem: 'At the top of the message, your logo will be placed'.
		html listItem: 'At the bottom of the message, there will be a link to unsubscribe to these mass mails.'.
		html listItem: 'Besides that, there will be no additional content added automatically. Your email message should contain everything, from salutation to signature'.
		html listItem: 'You will be added as a recipient.'.
		html listItem: ('The sender email address will be ', self mailer defaultSender greaseString).
		html listItem: [
			html text: 'Periodically read the email account postmaster@'.
			html text: self website domain.
			html text: ' for incoming mail delivery error messages, and handle them manually. ("Bounced emails")'.
	]]