rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [ self resetAllUserTerms ];
		with: 'Reset ALL accepted terms'.

	html form: [
		html textInput on: #searchString of: self.
		html space.
		html submitButton callback: [self performSearch]; with: 'Search'.
		html space.
		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all'	].
