as yet unclassified
renderContentOn: html
	html div
		class: cssClass;
		with: [
			self renderNextOn: html]