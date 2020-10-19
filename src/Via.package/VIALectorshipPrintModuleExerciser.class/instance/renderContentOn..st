rendering
renderContentOn: html
	html div class: 'noPrint'; with: [
		html anchorButton
			callback: [self downloadPdf];
			with: [
				html iconDownload; space.
				html text: 'Download as PDF']].
		
	html div id: 'moduleToPrint'; with: [
		self renderTitleOn: html.
		self renderBodyOn: html.
		self renderFooterOn: html].