rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [ self openAudioRecorder ];
		with: [ html iconRecord; space; text: 'Record audio' ].
	html form: [
		html textInput on: #searchString of: self.
		html submitButton callback: [self performSearch]; with: 'Search'.
		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all'].