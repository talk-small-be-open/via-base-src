as yet unclassified
renderContentOn: html
	self renderNextOn: html.
	self renderDetectedDeviceOn: html.
	self decoratedComponent isLoggedIn ifFalse: [
		self renderQuickLoginOn: html ].