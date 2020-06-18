rendering
renderGoogleLoginOn: html
	html anchorButton
		class: 'googleLogin';
		onClick: 'login_google()';
		with: [
			html iconGoogleOfficial; space.
			html t: 'login:googleLogin']