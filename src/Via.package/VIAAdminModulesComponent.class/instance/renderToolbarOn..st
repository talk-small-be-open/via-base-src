rendering
renderToolbarOn: html
	html form: [
		html skAnchorButton
			callback: [self createModule];
			with: '+ Create new module'.
		html label: [
			html checkbox
				onChange: 'this.form.submit()';
				on: #showOnlyMy of: self.
			html space.
			html text: 'Show only my modules'].
		html textInput on: #searchString of: self.
		html space.
		html submitButton callback: [self performSearch]; with: 'Search'.
		html space.
		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all' ]