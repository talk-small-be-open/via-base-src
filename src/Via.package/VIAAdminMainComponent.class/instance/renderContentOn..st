rendering
renderContentOn: html
	html div class: 'main container'; with: [
		html div style: 'float: right'; with: [
			self renderHelpOn: html.
			html space: 3.
			html text: self currentUser displayName.
			html text: ' is logged in as '.
			html text: self currentUser roles asCommaString.
			html space.
			html anchor
				callback: [self logout];
				with: 'Logout'.

		].
		html form: [

			html heading level5; class: 'mainTitle'; with: [
				html image style: 'vertical-align: middle'; url: '/images/logo_via.svg'; height: 'auto'; width: 40.
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
		self renderSystemMessageOn: html.
		
		html render: tabbedNavigationComponent]