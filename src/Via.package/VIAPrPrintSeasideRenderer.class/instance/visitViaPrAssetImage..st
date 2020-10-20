as yet unclassified
visitViaPrAssetImage: aViaPrAssetImage
	| width url img |
	width := aViaPrAssetImage parameters at: 'width' ifAbsent: [nil].
	
	url := width
		ifNil: [aViaPrAssetImage asset imageUrl]
		ifNotNil: [aViaPrAssetImage asset imageUrlWidth: width].
	
	html figure class: 'inlineAssetImage'; with: [
		img := html image
			url: url;
			yourself.
		width ifNotNil: [img width: width greaseString].
		html figureCaption: [
			self visitReference: aViaPrAssetImage.
		
			aViaPrAssetImage asset comment ifNotBlank: [:text |
				html span
					class: 'assetInfo';
					with: [
						html iconLegalNotice.
						html space.
						html pillarString: text]].
		]]