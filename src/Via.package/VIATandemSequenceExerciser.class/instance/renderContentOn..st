rendering
renderContentOn: html
	
	self addJavascript: '/js/outofthebox/tandem_sequence.js' on: html.

	html div class: 'uk-width-1-2@l uk-align-center'; with: [
		html div id: gameBoardId; with: [
			self renderPageLogicOn: html ].

"		html div
			onClick: ((html jQuery id: gameBoardId) load html: [ :h | self renderPageLogicOn: h ]);
			with: 'AJAX reload'."
			
		self renderP2pSynchronizationOn: html.
	]