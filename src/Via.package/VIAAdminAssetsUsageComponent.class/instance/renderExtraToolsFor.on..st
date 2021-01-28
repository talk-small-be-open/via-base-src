rendering
renderExtraToolsFor: anAsset on: html
	html div class: 'extraTools'; with: [
		html anchor
			callback: [ anAsset deleteTransformedMediaFiles ];
			with: 'Delete all generated copies (will rebuild on demand)'.
		html anchor
			callback: [ anAsset fileReference readContentType ];
			with: 'Reread content type'.
	]