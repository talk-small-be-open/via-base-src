rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
		self renderP2pSynchronizationOn: html.
		html anchorButton
			callback: [ self reset ];
			with: 'reset' ]