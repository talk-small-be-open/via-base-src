rendering
renderStep2InstructionsOn: html
	html div class: 'step2Instructions'; with: [
		self ifPlayer1: [
			html pillarSnippet: taskBrick step2PillarPlayerA
		] else: [ 
			html pillarSnippet: taskBrick step2PillarPlayerB
		].
	
		html div: [
			html anchorButton
				callback: [ self goAhead ];
				t: 'general:ok' ]
	
	]
