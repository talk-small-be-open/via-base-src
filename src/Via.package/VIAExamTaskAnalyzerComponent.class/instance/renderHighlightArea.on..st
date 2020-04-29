rendering-visitor
renderHighlightArea: aHighlightArea on: html
	self renderAnalyticsBoxOf: aHighlightArea on: html with: [
		html span
			class: 'highlightArea';
			with: aHighlightArea text]