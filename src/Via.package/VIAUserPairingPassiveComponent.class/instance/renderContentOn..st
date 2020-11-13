rendering
renderContentOn: html
	html div: 'Your ID ', self pairingToken code.

	self renderStatusOn: html.
	
	html anchorButton
		callback: [ self close ];
		with: 'Close'