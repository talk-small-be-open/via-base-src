as yet unclassified
openExtraToolsFor: anAsset
	| component |
	component := VIAPluggableComponent new
		titleText: (anAsset displayName);
		content: [:html |
			self renderExtraToolsFor: anAsset on: html ];
		showCloseButton: true;
		yourself.

	self showLightbox: nil component: component