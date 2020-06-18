rendering
renderStartPageOn: html
	html paragraph t: 'tandemSequence:pleaseChoosePlayer'.
	html ukAnchorButton
		callback: [ self iamPlayerNumber: 1 ];
		with: 'A'.
	html ukAnchorButton
		callback: [ self iamPlayerNumber: 2 ];
		with: 'B'.