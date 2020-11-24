rendering
renderPageStartOn: html
	html heading t: 'register:title'.
	html paragraph: [html t: 'register:info'].

	html form noAutocomplete; class: 'uk-form uk-form-stacked'; with: [
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:email'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput class: 'uk-width-1-2'; id: 'email'; on: #email of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:firstName'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput class: 'uk-width-1-2'; id: 'firstName'; on: #firstName of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:lastName'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput class: 'uk-width-1-2'; id: 'lastName'; on: #lastName of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:password'.
			html div class: 'uk-form-controls'; with: [html ukPasswordInput class: 'uk-width-1-2'; on: #password of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:passwordConfirmation'.
			html div class: 'uk-form-controls'; with: [html ukPasswordInput class: 'uk-width-1-2'; on: #passwordConfirmation of: self]].

		self renderDisclaimerOn: html.

		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:termsAccepted'.
			html div class: 'uk-form-controls'; with: [
				html label: [
					html ukCheckbox on: #termsAccepted of: self.
					html space.
					html t: 'general:yes']]].
		
		html div class: 'uk-margin-small'; with: [
			html ukSubmitButton
				callback: [self goAhead];
				t: 'register:registerNow'.
			html space.
			html anchor
				callback: [self cancel];
				t: 'cancel'.
		].
	]