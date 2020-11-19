rendering
renderStatusOn: html
	self isPaired ifTrue: [
		html div: [
			html sT: 'userPairing:isPairedTo'.
			html space.
			html text: self pairedUser displayName ].
		html anchorButton
			callback: [ self finish ];
			t: 'general:ok'
	] ifFalse: [ 

		html div t: 'userPairing:waitingToPair'.

		html anchorButton
			callback: [ self cancel ];
			with: 'general:cancel' ]