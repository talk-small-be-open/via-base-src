rendering
renderContentOn: html
	html div class: 'explanation'; t:'userPairing:pleaseShareThisCode'.

	html div class: 'yourId'; with: [
		html span class: 'message'; t: 'userPairing:yourId'.
		html space.
		html span class: 'theId'; with: self pairingToken code.
	].
"	html paragraph with: [
		html t: 'userPairing:idValidUntil_time_' p: {#time->self pairingToken expirationDateAndTime asTime print24}.
	]."

	self renderAjaxInterval: 2000 on: html while: [self pairingToken isValidNow] html: [ :h |
		self renderStatusOn: h ]