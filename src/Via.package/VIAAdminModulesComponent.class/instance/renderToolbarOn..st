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
			html text: 'Show only my modules']]