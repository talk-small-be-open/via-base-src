rendering
renderContentOn: html
	html paragraph t: 'captcha:info'.
	self renderCaptchaCodeOn: html.
	html form noAutocomplete with: [
		html textInput
			script: (html jQuery this triggerFocus);
			class: 'captcha';
			noAuto; 
			callback: [:value | self enteredCode: value].
		self renderErrorMessageOn: html.
		html div class: 'uk-margin'; with: [
			html submitButton
				callback: [self validate];
				t: 'captcha:ok'.
			html space.
			html anchor
				callback: [self cancel];
				t: 'general:cancel'.
			html space.
			html anchor
				callback: [self newCode];
				t: 'captcha:new']]