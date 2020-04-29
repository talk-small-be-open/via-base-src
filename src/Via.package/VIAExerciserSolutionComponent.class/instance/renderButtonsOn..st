rendering
renderButtonsOn: html
	html div class: 'buttons'; with: [
		self renderSolutionButtonsOn: html]