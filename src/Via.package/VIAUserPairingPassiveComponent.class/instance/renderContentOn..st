rendering
renderContentOn: html
	html div class: 'yourId'; with: [
		html span class: 'message'; t: 'userPairing:yourId'.
		html space.
		html span class: 'theId'; with: self pairingToken code.
	].
	html paragraph with: [
		html t: 'userPairing:idValidUntil'.
		html space.
		html text: self pairingToken expirationDateAndTime asTime print24 ].

	self renderAjaxInterval: 1000 on: html html: [ :h |
		self renderStatusOn: h ]