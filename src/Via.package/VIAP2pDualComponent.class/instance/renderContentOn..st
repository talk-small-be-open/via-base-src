rendering
renderContentOn: html
	
	"Remarks: For flawless usage, place this component at the very start
	of your HTML section which wants to use the P2P Javascript functions. This
	component will start the P2P process."
	
	html div
		id: self elementId;
		onClick: (self jsSend: 'ping');
		class: 'p2pStatus';
		with: [
			html span class: 'p2pIcon'; with: [
				html span class: 'p2pUndefined'; popover: ('p2p:waitingFor't, ' ', self otherPeerLabel); with: [
					html iconP2pUndefined ].
				html span class: 'p2pNotConnected'; popover: ('p2p:notPairedTo't, ' ', self otherPeerLabel); with: [
					html iconP2pNotConnected ].
				html span class: 'p2pConnected'; popover: ('p2p:pairedTo't, ' ', self otherPeerLabel); with: [
					html iconP2pConnected ] ].
"			html sT: label."
		].

	"Needs to be after the div creation"
	self renderJavascriptOn: html.