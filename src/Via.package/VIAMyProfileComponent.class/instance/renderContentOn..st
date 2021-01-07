rendering
renderContentOn: html
	html heading t: 'myProfile:title'.
	html ukFormStacked: [
		html div class: 'uk-margin'; with: [
			html ukFormLabel t: 'myProfile:firstName'.
			html ukFormControls: [
				html ukTextInput
					class: 'uk-form-width-medium';
					on: #firstName of: user]].
		html div class: 'uk-margin'; with: [
			html ukFormLabel t: 'myProfile:lastName'.
			html ukFormControls: [
				html ukTextInput
					class: 'uk-form-width-medium';
					on: #lastName of: user]].
		html div class: 'uk-margin'; with: [
			html ukFormLabel t: 'myProfile:email'.
			html ukFormControls: [
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