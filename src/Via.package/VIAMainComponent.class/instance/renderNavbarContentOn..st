rendering
renderNavbarContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html ].

"			html heading level4; class: 'hm-claim'; with: 'Potenzia il tuo italiano!'."
	html div class: 'uk-navbar-right'; id: 'mainMenu'; with: [
		self renderMenuOn: html.
"		self renderAccountMenuOn: html."
	]