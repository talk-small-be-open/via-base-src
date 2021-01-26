rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [ self openAudioRecorder ];
		with: [ html iconRecord; space; text: 'Record audio' ].
	html form: [
		self renderSearchStringOn: html.
		self renderSearchTypeOn: html.
		self renderSearchPerformOn: html.
		html space.
		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all'.
		html space.
		html skAnchorButton
			callback: [ self showNone ];
			with: 'Show none'.
	]