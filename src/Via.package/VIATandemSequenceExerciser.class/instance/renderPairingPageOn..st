rendering
renderPairingPageOn: html
	html div class: 'pairer'; class: self playerCss; with: [
		html render: pairingComponent ].
	
"	self renderToolbarOn: html"