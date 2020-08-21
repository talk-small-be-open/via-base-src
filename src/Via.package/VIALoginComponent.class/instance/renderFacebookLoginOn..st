rendering
renderFacebookLoginOn: html
	html anchorButton
		class: 'facebookLogin';
		onClick: 'login_facebook()';
		with: [
			html iconFacebookOfficial; space.
			html t: 'login:facebookLogin']