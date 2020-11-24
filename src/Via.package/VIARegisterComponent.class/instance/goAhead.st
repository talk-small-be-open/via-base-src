as yet unclassified
goAhead
	(self validate) ifTrue: [
		self afterCaptcha: [
			self sendActivationEmail.
			self gotoPage: #activation]]