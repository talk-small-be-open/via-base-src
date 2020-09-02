as yet unclassified
renderContentOn: html
	html div class: 'main container'; with: [

		html heading: 'Gateway to the secret dungeons'.
		html image url: '/images/logo_via.svg'; height: 'auto'; width: 120.
		html form: [
			html label: 'Website:'.
			html select
				list: self db websites;
				labels: [:each | each title ];
				on: #targetWebsite of: self.
			html label: 'Email:'.
			html textInput
				id: 'loginEmail';
				autocomplete: 'username';
				on: #email of: self.
			html label: 'Magic spell:'.
			html passwordInput
				id: 'loginPassword';
				autocomplete: 'current-password';
				on: #password of: self.
			html break.
			html submitButton
				callback: [self authenticate];
				with: 'Be brave!'
			]].
	
	self ifDevelopment: [
		self db websites do: [:eachWebsite |
			html paragraph: eachWebsite title.
				
			html unorderedList
				list: eachWebsite data backendUsers;
				labels: [:each | each displayName, ' (', each rolesLabel, ')'];
				callback: [:a |
					self session loginBackendUser: a.
					self session website: eachWebsite.
					self close]]]