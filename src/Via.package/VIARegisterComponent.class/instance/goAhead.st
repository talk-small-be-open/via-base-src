as yet unclassified
goAhead
	(self validate) ifTrue: [
		self afterCaptchaDo: [
			self sendActivationEmail.
			self gotoPage: #activation]]