rendering
renderStatusOn: html
	html div class: 'pairingStatus'; with: [
		self isPaired ifTrue: [
			html div class: 'pairingMessage'; with: [
				html sT: 'userPairing:isPairedTo'.
				html space.
				html text: self pairedUser firstName ].
			html anchorButton
				callback: [ self finish ];
				t: 'userPairing:okNext'
		] ifFalse: [ 
			self renderWaitingToPairOn: html		
		].
	].

	html ukAnchorButtonSmall
		callback: [ self cancel ];
		t: 'userPairing:cancel'