rendering
renderContentOn: html
	
	html div
		id: self elementId;
		onClick: (self jsSend: 'ping');
		class: 'p2pStatus';
		with: 'LIVE'.
	
"	html anchor callback: [ self answer ]; with: 'close'."

	self renderJavascriptOn: html.