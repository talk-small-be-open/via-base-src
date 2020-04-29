as yet unclassified
renderButtonsOn: html
	html div class: 'buttons'; with: [
		html ukAnchorButton
			class: 'start';
"			callback: [self reset];"
			with: [html t: 'embedded:startExercise']]