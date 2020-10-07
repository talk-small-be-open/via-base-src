rendering
renderStartButtonOn: html
	self  renderInstructionsOn: html.
	
	html ukAnchorButton
		callback: [ self start ];
		t: 'tandemSequence:start'.