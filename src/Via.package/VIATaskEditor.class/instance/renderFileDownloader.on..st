rendering-visitor
renderFileDownloader: aFileDownloader on: html
	self renderInputEditorFor: aFileDownloader on: html with: [
		aFileDownloader hasAsset ifTrue: [
			html div
				class: 'downloadPreview';
				with: [
					aFileDownloader asset renderPreviewOn: html ].
		].

		html skRow: [
			html skColumnWidth: 'nine' with: [
				html selectize
					list: self wd assets reversed;
					labels: [:each | each displayName];
					beOptional;
					on: #asset of: aFileDownloader ].
	]]