rendering
renderFacebookLoginOn: html
	html ukAnchorButton
		class: 'facebookLogin';
		onClick: 'login_facebook()';
		with: [
			html iconFacebookOfficial; space.
			html t: 'login:facebookLogin']