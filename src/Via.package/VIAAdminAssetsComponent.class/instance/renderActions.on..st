rendering
renderActions: anAsset on: html
	html anchor
		target: '_blank';
		url: anAsset location;
		with: 'Open URL ...'.
	html anchor
		callback: [self editAsset: anAsset];
		with: 'Edit'.
	html anchor
		callback: [ self openExtraToolsFor: anAsset ];
		with: 'Tools ...'