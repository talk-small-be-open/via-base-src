rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
		self renderP2pSynchronizationOn: html.
		html ukButtonGroup: [
			html anchorButton
				callback: [ self reset ];
				with: 'reset'.
			html anchorButton
				callback: [ self playAgain ];
				with: 'play again'.
			html anchorButton
				callback: [ ];
				with: 'swap sides' ].	
	]