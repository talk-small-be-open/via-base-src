as yet unclassified
visitViaPrAssetImage: aViaPrAssetImage
	| width url img asset |
	
	asset := aViaPrAssetImage asset.
	asset ifNil: [ html span: 'IMAGENOTFOUND'. ^ self ].

	width := aViaPrAssetImage parameters at: 'width' ifAbsent: [nil].
	
	url := width
		ifNil: [ asset imageUrl]
		ifNotNil: [ asset imageUrlWidth: width].
	
	html figure class: 'inlineAssetImage'; with: [
		img := html image
			url: url;
			yourself.
		width ifNotNil: [img width: width greaseString].
		html figureCaption: [
			self visitReference: aViaPrAssetImage.
		
			asset comment ifNotBlank: [:text |
				html span
					class: 'assetInfo';
					with: [
						html iconLegalNotice.
						html space.
						html pillarString: text]].
		]]