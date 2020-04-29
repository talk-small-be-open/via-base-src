rendering
renderDetailsWrong: aWrongness on: html with: aRenderable
	html span
		class: 'analyticsDetails';
		popover: ('Falsch: ', aWrongness asString, '%');
		style: 'background-color: ', (self cssColorForWrongness: aWrongness);
		with: aRenderable