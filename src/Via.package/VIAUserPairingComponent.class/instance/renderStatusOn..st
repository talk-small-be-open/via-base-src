rendering
renderStatusOn: html
	self isPaired ifTrue: [
		html div: 'Is paired to ', self pairedUser displayName.
		html anchorButton
			callback: [ self finish ];
			t: 'general:ok'
	]