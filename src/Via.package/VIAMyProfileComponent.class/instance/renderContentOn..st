rendering
renderContentOn: html
	html heading t: 'myProfile:title'.
	html form class: 'uk-form uk-form-stacked'; with: [
		html div class: 'uk-form-row'; with: [
			html label class: 'uk-form-label'; t: 'myProfile:firstName'.
			html div class: 'uk-form-controls'; with: [html textInput on: #firstName of: user]].
		html div class: 'uk-form-row'; with: [
			html label class: 'uk-form-label'; t: 'myProfile:lastName'.
			html div class: 'uk-form-controls'; with: [html textInput on: #lastName of: user]].
		html div class: 'uk-form-row'; with: [
			html label class: 'uk-form-label'; t: 'myProfile:email'.
			html div class: 'uk-form-controls'; with: [
				html span: user email.
				"html textInput on: #email of: user"]].
		html div class: 'topBuffer'; with: [
			html ukSubmitButton t: 'myProfile:save']].
	html div class: 'topBuffer'; with: [
		html anchor
			callback: [self sendChangePasswordLink];
			t: 'myProfile:sendChangePasswordLink'.
		html break.
		html anchor
			callback: [self sendDeleteAccountLink];
			t: 'myProfile:sendDeleteAccountLink'.
			
	]