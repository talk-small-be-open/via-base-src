actions
sendTestToMe
	| email |
	email := self currentUser email.
	mailing sendTestTo: email.
	self flashMessage: 'Mass mailing sent to ', email.