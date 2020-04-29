as yet unclassified
goAhead
	(self validate) ifTrue: [
		self sendActivationEmail.
		self gotoPage: #activation]