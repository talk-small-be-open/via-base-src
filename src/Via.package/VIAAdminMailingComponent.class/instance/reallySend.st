as yet unclassified
reallySend
	self wd addMassMailing: mailing.
	mailing send.
	self flashMessage: 'Mass mailing sent'.
	self start