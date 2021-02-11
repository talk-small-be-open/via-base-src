rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
		html skAnchorButton
			callback: [ self refresh ];
			with: 'Refresh'
	]