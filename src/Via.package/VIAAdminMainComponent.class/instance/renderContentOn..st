rendering
renderContentOn: html
	html div class: 'main container'; with: [
		html div style: 'float: right'; with: [
			self renderHelpOn: html.
			html space: 3.
			html text: 'Logged in as '.
			html text: self currentUser displayName.
			html space.
			html anchor
				callback: [self logout];
				with: 'Logout'.

		].
		html form: [

			html heading level5; class: 'mainTitle'; with: [
				html image url: '/files/css/images/logo_321.svg'; height: 'auto'; width: 30.
				html space.
				html text: 'Administration'.
				html space.
				self ifAdmin: [
					html select
						onChange: 'this.form.submit()';
						list: self db websites;
						labels: [:each | each displayName];
						selected: (self session website);
						callback: [:value | self changeWebsite: value]]
					else: [html span: self session website displayName].
			].
		].
		
		self renderFlashMessagesOn: html.
		html render: tabbedNavigationComponent]