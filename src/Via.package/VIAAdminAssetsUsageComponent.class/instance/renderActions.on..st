rendering
renderActions: anAsset on: html
	html anchor
		callback: [self editAsset: anAsset];
		with: 'Edit'.
"	html anchor
		callback: [ self openExtraToolsFor: anAsset ];
		with: 'Tools ...'"