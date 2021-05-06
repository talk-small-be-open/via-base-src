rendering
renderContentOn: html

	self isPaired
		ifTrue: [
			self renderStatusOn: html.
			self renderExistingPairingOn: html.
		]
		ifFalse: [
			html div class: 'explanation'; t:'userPairing:pleaseShareThisCode'.

			lastPairedUser ifNotNil: [
				pairingToken invitedUser = lastPairedUser ifTrue: [
					html div: lastPairedUser firstName, ' will auto-pair'.
				] ifFalse: [
					html anchor
						callback: [ self inviteUser: lastPairedUser ];
						with: ('invite ', lastPairedUser firstName) ]
			].

			html div class: 'yourId'; with: [
				html span class: 'message'; t: 'userPairing:yourId'.
				html space.
				html span class: 'theId'; with: self pairingToken code].

			self
				renderAjaxInterval: 2000
				on: html
				while: [self isPaired not and: [self pairingToken isValidNow]]
				html: [ :h | self renderStatusOn: h ]
		]