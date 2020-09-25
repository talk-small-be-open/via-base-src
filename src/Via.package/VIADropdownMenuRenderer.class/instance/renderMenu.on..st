as yet unclassified
renderMenu: aMenu on: html
	html unorderedList
		class: 'uk-navbar-nav';
		class: aMenu css;
		with: [
			aMenu itemsDo: [:each |
				html listItem
					class: each css;
					with: [
						each acceptRender: self on: html
			]]]