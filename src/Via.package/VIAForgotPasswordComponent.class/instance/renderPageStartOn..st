rendering
renderPageStartOn: html
	html paragraph t: 'forgotPassword:info'.
	html form noAutocomplete; with: [
		html paragraph: [  
			html t: 'forgotPassword:email'.
			html space.
			html ukTextInput
				on: #email of: self].
		html break.
		html ukSubmitButton
			callback: [self goAhead];
			t: #forgotPassword:sendInformationEmail]