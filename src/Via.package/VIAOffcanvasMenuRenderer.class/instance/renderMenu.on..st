as yet unclassified
renderMenu: aMenu on: html
	html ukNav
		class: aMenu css;
		class: 'uk-nav-default uk-nav-parent-icon';
		with: [
			html listItem class: 'uk-nav-header'; with: 'MENU'.
			html listItem class: 'uk-nav-divider'.
			aMenu itemsDo: [:each |
				html listItem
					class: each css;
					with: [
						each acceptRender: self on: html
			]]]