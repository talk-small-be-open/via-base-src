as yet unclassified
renderContentOn: html
	html div class: 'uk-container uk-padding centerContainer'; with: [
		self renderNextOn: html]