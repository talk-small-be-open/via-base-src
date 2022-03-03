rendering
renderExtraToolsFor: anAsset inDialog: aComponent on: html
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
			callback: [ anAsset buildPreviewImage ];
			with: 'Rebuild preview image (if previewable)'.
		html anchor
			callback: [ self reuploadFor: anAsset ];
			with: 'Re-Upload file'.
		html anchor
			callback: [self deleteAsset: anAsset. aComponent close];
			with: 'Delete'.
"		self ifAdmin: [
			self ifDevelopment: [
			].
		]."
	]