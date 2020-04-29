rendering
renderMyCertificateOn: html
	self currentPortfolio hasDoneModuleExercises ifTrue: [ 
		html div class: 'uk-container topBuffer'; with: [
			html heading level4; t: 'myPortfolio:myCertificate'.
			html ukAnchorButton
				callback: [self generateCertificate];
				with: [
					html ukIcon: 'trophy'; space.
					html t: 'myPortfolio:downloadCertificatePdf'].
	"			html anchor
				class: 'certificatePreview';
				callback: [self generateCertificate];
				with: ["
					html div class: 'certificatePreview'; with: certificate	.
			]]