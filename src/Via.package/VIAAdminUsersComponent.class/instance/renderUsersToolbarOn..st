rendering
renderUsersToolbarOn: html

	html form: [
		html textInput on: #searchString of: self.
		html space.
		html submitButton callback: [self performSearch]; with: 'Search'.
		html space.
		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all'.
		html space.
		html skAnchorButton
			callback: [ self clear ];
			with: 'Clear'
	].

	self users ifNotBlank: [ 
		html skAnchorButton
			callback: [ self resetAllUserTerms ];
			with: 'Reset accepted terms of shown users' ].
