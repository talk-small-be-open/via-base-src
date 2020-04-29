rendering
renderContentOn: html
	html heading level2; t: 'login:title'.
	html paragraph t: messageKey.

	facebook ifTrue: [
		self renderFacebookLoginOn: html].

	google ifTrue: [
		self renderGoogleLoginOn: html].

	local ifTrue: [
		html div class: 'uk-margin'; with: [
			self renderLocalLoginOn: html.
			html anchor
				callback: [self registerNewUser];
				t: 'login:registerNewUser'.
			html break.
			html anchor
				callback: [self forgotPassword];
				t: 'login:forgotPassword']].
		
	html ukAnchorButtonSmall
		callback: [self close];
		t: 'login:close'.
		
	self ifDevelopment: [
		html break; break.
		self renderQuickLoginOn: html]