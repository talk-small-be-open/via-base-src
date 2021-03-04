rendering
renderExtraToolsFor: anAsset on: html
	html div class: 'extraTools'; with: [
		html anchor
			callback: [self showUsingModules: anAsset];
			with: 'Where is it used?'.
		html anchor
			callback: [ anAsset deleteTransformedMediaFiles ];
			with: 'Delete all generated copies (will rebuild on demand)'.
		html anchor
			callback: [ anAsset fileReference readContentType ];
			with: 'Reread content type'.
		html anchor
			callback: [ self reuploadFor: anAsset ];
			with: 'Re-Upload file'.
		html anchor
			callback: [self deleteAsset: anAsset];
			with: 'Delete'.
"		self ifAdmin: [
			self ifDevelopment: [
			].
		]."
	]