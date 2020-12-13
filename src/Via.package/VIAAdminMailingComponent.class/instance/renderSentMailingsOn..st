rendering
renderSentMailingsOn: html
	html heading level2; with: 'Previous mailings'.
	self wd massMailings do: [ :each |
		html div: [
			html anchor
				callback: [ self showMessageOf: each ];
				with: each displayName.
			html space.
			html anchor
				callback: [ self removeMassMailing: each ];
				with: [ html iconDelete ]
		]
	]