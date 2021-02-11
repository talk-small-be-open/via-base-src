as yet unclassified
renderSubMenu: aMenu on: html
	aMenu mainEntry acceptRender: self on: html.

	html unorderedList
		class: 'uk-nav-sub';
		class: aMenu css;
"		class: 'collapsed' if: aMenu isCollapsed;"
		with: [
			aMenu itemsDo: [:each |
				html listItem
					class: each css;
					with: [
						each acceptRender: self on: html
		]]]