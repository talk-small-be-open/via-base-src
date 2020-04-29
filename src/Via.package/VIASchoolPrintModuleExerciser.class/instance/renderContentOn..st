rendering
renderContentOn: html
	html div class: 'noPrint'; with: [
		html ukAnchorButton
			callback: [self downloadPdf];
			with: 'PDF'].
		
	html div id: 'moduleToPrint'; with: [
		self renderTitleOn: html.
"		self renderScoreOn: html."
		self renderBodyOn: html.
		self renderFooterOn: html].