rendering-visitor
renderDualImageSwitcher: anImageSwitcher on: html

	| assets |
	assets := (self wd imageAssets sortedReversedBy: [ :each | each createdAt ]).

	self renderInputEditorFor: anImageSwitcher on: html with: [
		anImageSwitcher hasImage1 ifTrue: [
			html div
				style: 'width:100px;height:auto;margin:0 5px 10px 0;display:inline-block;';
				with: [
					anImageSwitcher imageAsset1 renderPreviewOn: html ].
			anImageSwitcher hasImage2 ifTrue: [
				html div
					style: 'width:100px;height:auto;margin:0 5px 10px 0;display:inline-block;';
					with: [
						anImageSwitcher imageAsset2 renderPreviewOn: html ].
			].
			html span: [ 
				html text: 'Original width: '.
				html text: anImageSwitcher imageAsset1 width asString.
				html text: ' pixels' ]
		].
			
		html skRow: [
			html skColumnWidth: 'nine' with: [
				html label: 'Image 1:'.
				html selectize
					list: assets;
					labels: [:each | each uniqueLabel ];
					beOptional;
					on: #imageAsset1 of: anImageSwitcher].
			html skColumnWidth: 'three' with: [
				html label: 'Width:'.
				html numberInput
					min: 10;
					max: 1000;
					on: #width of: anImageSwitcher.
				html span: ' pixels'
			].
		].

		html skRow: [
			html skColumnWidth: 'nine' with: [
				html label: 'Image 2:'.
				html selectize
					list: assets;
					labels: [:each | each uniqueLabel ];
					beOptional;
					on: #imageAsset2 of: anImageSwitcher].
		].

		html skRow: [
			html label: 'Switching text:'.
			html textInput
				on: #switchText of: anImageSwitcher
		]
	
	
	]