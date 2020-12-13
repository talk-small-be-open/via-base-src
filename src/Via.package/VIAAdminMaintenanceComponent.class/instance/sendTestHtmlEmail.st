actions
sendTestHtmlEmail
	| email |
	email := self request: 'Email address?' default: 'andreas.brodbeck@mindclue.ch'.
	self wd mailer sendTestHtmlEmailTo: email