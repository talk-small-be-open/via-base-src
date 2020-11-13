rendering
renderContentOn: html
	
	html div class: 'p2pStatus'; with: 'P2P connected'.
	
"	html anchor callback: [ self answer ]; with: 'close'."

	self renderJavascriptOn: html.