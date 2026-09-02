actions
openMoreInfosFor: aModule

	| component |
	component := VIAPluggableComponent new
		rendererClass: VIAAdminHtmlCanvas;
		titleText: ('Module: ', aModule displayName);
		content: [:html |
			self renderMoreInfosFor: aModule on: html ];
		showCloseButton: true;
		yourself.

	self showLightbox: nil component: component