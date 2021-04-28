rendering-visitor
renderFileDownloader: aFileDownloader on: html

	| assets |
	assets := (self wd assets sortedReversedBy: [ :each | each createdAt ]).

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
					list: assets;
					labels: [:each | each displayName];
					beOptional;
					on: #asset of: aFileDownloader ].
	]]