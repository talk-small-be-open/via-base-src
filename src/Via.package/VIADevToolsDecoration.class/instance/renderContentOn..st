as yet unclassified
renderContentOn: html
	self renderNextOn: html.
	self renderDetectedDeviceOn: html.
	self renderQuickLoginOn: html.