rendering
renderContentOn: html
	html div: 'Your ID ', self pairingToken code.

	self renderAjaxInterval: 1000 on: html html: [ :h |
		self renderStatusOn: h ].

	html anchorButton
		callback: [ self close ];
		with: 'Close'