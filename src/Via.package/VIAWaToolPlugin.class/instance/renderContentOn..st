rendering
renderContentOn: html
	html span
		style: 'cursor: pointer';
		onClick: ((html jQuery this parent: 'div.wa-toolbar') hide);
		with: 'X'