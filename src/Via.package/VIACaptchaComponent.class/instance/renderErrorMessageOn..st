rendering
renderErrorMessageOn: html
	self isInvalid ifTrue: [
		html paragraph
			class: 'error';
			t: 'captcha:errorWrongCode']