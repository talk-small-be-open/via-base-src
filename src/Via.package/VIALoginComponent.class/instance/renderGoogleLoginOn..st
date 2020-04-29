rendering
renderGoogleLoginOn: html
	html ukAnchorButton
		class: 'googleLogin';
		onClick: 'login_google()';
		with: [
			html iconGoogleOfficial; space.
			html t: 'login:googleLogin']