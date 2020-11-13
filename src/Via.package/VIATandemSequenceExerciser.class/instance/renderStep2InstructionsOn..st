rendering
renderStep2InstructionsOn: html
	html div: [
		self ifPlayer1: [
			html pillarSnippet: taskBrick step2PillarPlayerA
		] else: [ 
			html pillarSnippet: taskBrick step2PillarPlayerB
		]
	]
