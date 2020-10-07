rendering
renderContentOn: html
	html div class: 'uk-width-1-2@l uk-align-center'; with: [
		self renderPageLogicOn: html
	]