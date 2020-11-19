rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
		html ukButtonGroup: [
			html anchorButton
				callback: [ self reset ];
				with: 'reset'.
			html anchorButton
				callback: [ self playAgain ];
				with: 'play again'.
			html anchorButton
				callback: [ ];
				with: 'swap sides'.	
			html anchorButton
				onClick: (((html jQuery id: gameBoardId) at: 0) call: 'toggleFullscreen');
				with: 'Fullscreen'].
		self renderP2pSynchronizationOn: html.	
	]