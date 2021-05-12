rendering
renderToolbarOn: html
	html div class: 'toolbar'; with: [
"		html span class: 'tool'; with: [
			html anchor
				callback: [ self reset ];
				with: [ html fasIcon: 'redo-alt' ]]."

		self ifPlayer1: [
			self isFirstQAndA ifFalse: [ 
				html span class: 'tool'; with: [
					self ajaxAction: [ self goBackFull ] on: html with: [
	"					html fasIcon: 'undo'."
						html fasIcon: 'chevron-left'.
						html fasIcon: 'chevron-left'.
					]
				]].
"			html span class: 'tool'; with: [
				self ajaxAction: [ self goBack ] on: html with: [
					html fasIcon: 'chevron-left' ]].
			html span class: 'tool'; with: [
				self ajaxAction: [ self goAhead ] on: html with: [
					html fasIcon: 'chevron-right' ]]."
		].

"			self isInGame ifTrue: ["
"				html anchorButton
			callback: [ self playAgain ];
			t: 'tandemSequence:playAgain'."
"				html anchorButton
			callback: [ ];
			with: 'swap sides'."

"		(self session isViewportSmall and: [self session isFullscreenSupported and: [self isInGame]]) ifTrue: [
			html span class: 'tool'; with: [
				html anchor
					onClick: (((html jQuery id: gameBoardId) at: 0) call: 'toggleFullscreen');
					with: [ html iconFullscreen ]
			].
		]."

"		self renderP2pSynchronizationOn: html.	"
			
			
	]