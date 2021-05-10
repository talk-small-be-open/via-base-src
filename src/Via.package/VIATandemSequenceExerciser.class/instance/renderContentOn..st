rendering
renderContentOn: html
	
	self addJavascript: '/js/outofthebox/tandem_sequence.js' on: html.

	self requirementsReady ifFalse: [ ^ self ].

	html div class: 'uk-width-1-2@l uk-align-center uk-margin-remove-top'; class: taskBrick uiStyle; with: [
		html div id: gameBoardId; with: [
			self renderPageLogicOn: html ].

		"Outside of AJAX reload area. P2P needs to be active all the time"
		self renderP2pSynchronizationOn: html.
"		self renderToolbarOn: html"
		self renderTestdriveToolsOn: html.
	].
