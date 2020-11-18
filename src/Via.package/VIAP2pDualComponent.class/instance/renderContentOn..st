rendering
renderContentOn: html
	
	"Remarks: For flawless usage, place this component at the very start
	of your HTML section which will use P2P Javascript functions. This
	component will start the P2P process."
	
	html div
		id: self elementId;
		onClick: (self jsSend: 'ping');
		class: 'p2pStatus';
		with: label.
	
	"Needs to be after the div creation"
	self renderJavascriptOn: html.