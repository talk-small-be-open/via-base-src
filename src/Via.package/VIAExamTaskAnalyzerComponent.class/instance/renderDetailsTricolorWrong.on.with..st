rendering
renderDetailsTricolorWrong: aWrongness on: html with: aRenderable
	html span
		class: 'analyticsDetails';
		popover: ('Falsch: ', aWrongness asString, '%');
		style: 'background-color: ', (self cssColorForTricolorWrongness: aWrongness);
		with: aRenderable