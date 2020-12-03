rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
		html ukButtonGroup: [
			self isInGame ifTrue: [
				html anchor
					callback: [ self reset ];
					with: [ html iconReset ].
"				html anchorButton
					callback: [ self playAgain ];
					t: 'tandemSequence:playAgain'."
"				html anchorButton
					callback: [ ];
					with: 'swap sides'."
				self session isFullscreenSupported ifTrue: [
					html anchorButton
						onClick: (((html jQuery id: gameBoardId) at: 0) call: 'toggleFullscreen');
						t: 'tandemSequence:toggleFullscreen']]].
		self renderP2pSynchronizationOn: html.	
	]