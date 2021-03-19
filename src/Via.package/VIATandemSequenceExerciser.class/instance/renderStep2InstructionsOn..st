rendering
renderStep2InstructionsOn: html
	html div class: 'step2Instructions'; class: self playerCss; with: [
		self renderPlayerLabel: self playerInTurn on: html.
		self ifPlayer1: [
			html pillarSnippet: taskBrick step2PillarPlayerA
		] else: [ 
			html pillarSnippet: taskBrick step2PillarPlayerB
		].
	
		html div class: 'buttons'; with: [
			self ajaxAction: [ self goAhead ] on: html with: [
				html ukButton
					t: 'general:ok' ]
		]
	
	]