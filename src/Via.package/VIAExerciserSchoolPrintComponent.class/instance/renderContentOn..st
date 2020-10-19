rendering
renderContentOn: html
	self clearRenderingHelpers.
	
	html div class: 'exercise'; with: [
		exerciseGSRENAME task acceptRenderingVisitor: self on: html.
		self renderAnnexOn: html]