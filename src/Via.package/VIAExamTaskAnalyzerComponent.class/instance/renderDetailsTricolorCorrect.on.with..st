rendering
renderDetailsTricolorCorrect: aCorrectness on: html with: aRenderable
	html span
		class: 'analyticsDetails';
		popover: ('Richtig: ', aCorrectness asString, '%');
		style: 'background-color: ', (self cssColorForTricolorCorrectness: aCorrectness);
		with: aRenderable