actions
openExtraToolsFor: aModule
	| component |
	component := VIAPluggableComponent new
		rendererClass: VIAAdminHtmlCanvas;
		titleText: ('Module: ', aModule displayName);
		content: [:html |
			| canEdit |
			canEdit := self canEditModule: aModule.
			self renderExtraToolsFor: aModule canEdit: canEdit on: html ];
		showCloseButton: true;
		yourself.

	self showLightbox: nil component: component