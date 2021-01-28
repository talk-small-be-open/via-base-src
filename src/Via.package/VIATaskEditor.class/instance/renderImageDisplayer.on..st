rendering-visitor
renderImageDisplayer: anImageDisplayer on: html
	html div class: 'inputEditor'; with: [

		anImageDisplayer hasImage ifTrue: [
			html div
				style: 'width:100px;height:100px;margin-bottom:5px;';
				with: [
					anImageDisplayer imageAsset renderPreviewOn: html ].
			html div: [ 
				html text: 'Original width: '.
				html text: anImageDisplayer imageAsset width asString.
				html text: ' pixels' ]
		].
			
		html skRow: [
			html skColumnWidth: 'nine' with: [
				html select
					list: self wd imageAssets reversed;
					labels: [:each | each displayName];
					beOptional;
					on: #imageAsset of: anImageDisplayer ].
			html skColumnWidth: 'three' with: [
				html label class: 'inline'; with: 'Width: '.
				html numberInput
					min: 10;
					max: 1000;
					on: #width of: anImageDisplayer.
				html span: ' pixels'
			].
	]]