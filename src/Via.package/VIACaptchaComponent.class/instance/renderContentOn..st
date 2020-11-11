rendering
renderContentOn: html
	html paragraph t: 'captcha:info'.
	self renderCaptchaCodeOn: html.
	html form noAutocomplete with: [
		html textInput
			script: (html jQuery this triggerFocus);
			class: 'captcha';
			callback: [:value | self enteredCode: value].
		self renderErrorMessageOn: html.
		html break.
		html break.
		html submitButton
			callback: [self validate];
			t: 'captcha:ok'.
		html space.
		html anchorButton
			callback: [self cancel];
			t: 'general:cancel'.
		html space.
		html anchorButton
			callback: [self newCode];
			t: 'captcha:new']