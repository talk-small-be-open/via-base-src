rendering
renderStatusOn: html
	html div class: 'pairingStatus'; with: [
		self isPaired ifTrue: [
			html div class: 'uk-margin'; with: [
				html span class: 'pairingMessage'; with: [
					html sT: 'userPairing:isPairedTo'.
					html space.
					html text: self pairedUser firstName.
					html text: '.' ].
"				html space.
				html anchor
					callback: [ self unpair ];
					t: 'userPairing:unpairNow'"
				].


			html ukAnchorButtonLarge
				callback: [ self finish ];
				t: 'userPairing:okNext'
		] ifFalse: [ 
			self renderWaitingToPairOn: html		
		].
	].

