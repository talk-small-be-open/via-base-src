actions
sendTestEmail
	| email |
	email := self request: 'Email address?' default: 'andreas.brodbeck@mindclue.ch'.
	self wd mailer sendTestEmailTo: email