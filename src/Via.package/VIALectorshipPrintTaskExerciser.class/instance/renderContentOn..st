rendering
renderContentOn: html
	self clearRenderingHelpers.
	
	html div class: 'exercise'; with: [
		exercise task acceptRenderingVisitor: self on: html.
		self renderAnnexOn: html]