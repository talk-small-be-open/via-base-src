rendering-visitor
renderImageDisplayer: anImageDisplayer on: html

	| assets |
	assets := (self wd imageAssets sortedReversedBy: [ :each | each createdAt ]).

	self renderInputEditorFor: anImageDisplayer on: html with: [
		anImageDisplayer hasImage ifTrue: [
			html div
				style: 'width:100px;height:auto;margin-bottom:5px;';
				with: [
					anImageDisplayer imageAsset renderPreviewOn: html ].
			html div: [ 
				html text: 'Original width: '.
				html text: anImageDisplayer imageAsset width asString.
				html text: ' pixels' ]
		].
			
		html skRow: [
			html skColumnWidth: 'nine' with: [
				html selectize
					list: assets;
					labels: [:each | each displayName];
					beOptional;
					on: #imageAsset of: anImageDisplayer].
			html skColumnWidth: 'three' with: [
				html label class: 'inline'; with: 'Width: '.
				html numberInput
					min: 10;
					max: 1000;
					on: #width of: anImageDisplayer.
				html span: ' pixels'
			].
	]]