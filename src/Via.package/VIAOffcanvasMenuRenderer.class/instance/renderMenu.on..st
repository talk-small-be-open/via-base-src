as yet unclassified
renderMenu: aMenu on: html
	html ukNav
		class: aMenu css;
		class: 'uk-nav-default';
		with: [
			aMenu subitemsDo: [:each |
				html listItem
					class: each css;
					with: [
						each acceptRender: self on: html
			]]]