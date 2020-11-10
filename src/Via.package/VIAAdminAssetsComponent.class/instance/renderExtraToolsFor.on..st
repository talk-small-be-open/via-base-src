rendering
renderExtraToolsFor: anAsset on: html
	html div class: 'extraTools'; with: [
		html anchor
			callback: [self deleteAsset: anAsset];
			with: 'Delete'.
		html anchor
			callback: [self showUsingModules: anAsset];
			with: 'Where is it used?'.
		html anchor
			callback: [ anAsset buildPreviewImage ];
			with: 'Rebuild preview image'.
		html anchor
			callback: [ anAsset fileReference readContentType ];
			with: 'Reread content type'.
"		self ifAdmin: [
			self ifDevelopment: [
			].
		]."
	]