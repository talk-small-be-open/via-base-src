rendering
renderStartPageOn: html
	html paragraph: 'Press A or B'.
	html ukAnchorButton
		callback: [ self iamPlayerNumber: 1 ];
		with: 'A'.
	html ukAnchorButton
		callback: [ self iamPlayerNumber: 2 ];
		with: 'B'.