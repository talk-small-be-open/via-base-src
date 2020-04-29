as yet unclassified
renderClickOverlayOn: html
	html anchor
		class: 'clickOverlay';
		callback: [self openLoginDialog];
		with: [html space]