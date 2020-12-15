rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
"			self isInGame ifTrue: ["
				html anchor
					callback: [ self reset ];
					with: [ html fasIcon: 'undo' "iconRefresh" ].
"				html anchorButton
					callback: [ self playAgain ];
					t: 'tandemSequence:playAgain'."
"				html anchorButton
					callback: [ ];
					with: 'swap sides'."
				(self session isViewportSmall and: [self session isFullscreenSupported and: [self isInGame]]) ifTrue: [
					html anchor
						onClick: (((html jQuery id: gameBoardId) at: 0) call: 'toggleFullscreen');
"						t: 'tandemSequence:toggleFullscreen'."
						with: [ html iconFullscreen ]
				].
"		self renderP2pSynchronizationOn: html.	"
	]