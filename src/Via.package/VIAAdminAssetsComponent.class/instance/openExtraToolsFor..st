as yet unclassified
openExtraToolsFor: anAsset
	| component |
	component := VIAPluggableComponent new
		titleText: (anAsset displayName);
		content: [:html :me |
			self renderExtraToolsFor: anAsset inDialog: me on: html ];
		showCloseButton: true;
		yourself.

	self showLightbox: nil component: component