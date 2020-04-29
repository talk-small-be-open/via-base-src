rendering
renderContentOn: html
 
	self renderHeaderOn: html.
	html div class: 'coreContainer'; with: [
		self renderCoreOn: html].
	self renderFooterOn: html.