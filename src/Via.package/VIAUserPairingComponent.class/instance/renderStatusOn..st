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
				t: 'general:ok'
		] ifFalse: [ 
			html div class: 'pairingMessage'; t: 'userPairing:waitingToPair' ].
	].

	html ukAnchorButtonSmall
		callback: [ self cancel ];
		t: 'general:cancel'