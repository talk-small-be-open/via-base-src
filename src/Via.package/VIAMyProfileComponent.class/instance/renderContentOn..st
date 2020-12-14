rendering
renderContentOn: html
	html heading t: 'myProfile:title'.
	html form class: 'uk-form-stacked'; with: [
		html div class: 'uk-margin'; with: [
			html label class: 'uk-form-label'; t: 'myProfile:firstName'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput
					class: 'uk-form-width-medium';
					on: #firstName of: user]].
		html div class: 'uk-margin'; with: [
			html label class: 'uk-form-label'; t: 'myProfile:lastName'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput
					class: 'uk-form-width-medium';
					on: #lastName of: user]].
		html div class: 'uk-margin'; with: [
			html label class: 'uk-form-label'; t: 'myProfile:email'.
			html div class: 'uk-form-controls'; with: [
				html span: user email.
				"html textInput on: #email of: user"]].
		self renderMailingSettingsOn: html.
		html div class: 'uk-margin'; with: [
			html ukSubmitButton t: 'myProfile:save']].
	html div class: 'uk-margin'; with: [
		html anchor
			callback: [self sendChangePasswordLink];
			t: 'myProfile:sendChangePasswordLink'.
		html break.
		html anchor
			callback: [self sendDeleteAccountLink];
			t: 'myProfile:sendDeleteAccountLink'.
			
	]