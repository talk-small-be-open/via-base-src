rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [ self showAll ];
		with: 'Show all'.
	html space.
	html skAnchorButton
		callback: [self downloadTextFile];
		with: 'Download texts'.
	html space.
	html skAnchorButton
		callback: [self uploadTextFile];
		with: 'Upload texts ...'.
	html space.
	html skAnchorButton
		callback: [self addKey];
		with: 'Add text ...'.

	html form
		class: 'searchForm';
		with: [
			html textInput on: #searchString of: self.
			html space.
			html submitButton callback: ["do nothing special"]; with: 'Search'.
			html hiddenInput callback: [self performSearch].

			html space.
 ]