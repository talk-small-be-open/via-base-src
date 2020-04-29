rendering-visitor
renderImageDisplayer: anImageDisplayer on: html
	html div class: 'inputEditor'; with: [

		anImageDisplayer hasImage ifTrue: [
			html image
				style: 'max-width:100px;max-height:100px';
				url: (anImageDisplayer imageUrl)].
		html space.
		html select
			list: self wd imageAssets reversed;
			labels: [:each | each displayName];
			beOptional;
			on: #imageAsset of: anImageDisplayer.
		html break; break.
		html label: 'Width: '.
		html numberInput
			min: 10;
			max: 1000;
			on: #width of: anImageDisplayer]