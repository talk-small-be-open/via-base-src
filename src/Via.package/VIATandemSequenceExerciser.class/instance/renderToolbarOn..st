rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
		html ukButtonGroup: [
			self isInGame ifTrue: [
				html anchorButton
					callback: [ self reset ];
					t: 'tandemSequence:reset'.
				html anchorButton
					callback: [ self playAgain ];
					t: 'tandemSequence:playAgain'.
"				html anchorButton
					callback: [ ];
					with: 'swap sides'."
				self session isFullscreenSupported ifTrue: [
					html anchorButton
						onClick: (((html jQuery id: gameBoardId) at: 0) call: 'toggleFullscreen');
						t: 'tandemSequence:toggleFullscreen']]].
		self renderP2pSynchronizationOn: html.	
	]