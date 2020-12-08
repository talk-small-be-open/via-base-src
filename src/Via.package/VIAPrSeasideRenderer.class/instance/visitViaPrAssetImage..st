as yet unclassified
visitViaPrAssetImage: aViaPrAssetImage
	| width url img asset |
	
	asset := aViaPrAssetImage asset.
	asset ifNil: [ html span: 'IMAGENOTFOUND'. ^ self ].
	
	width := aViaPrAssetImage parameters at: 'width' ifAbsent: [nil].
	
	url := width
		ifNil: [asset imageUrl]
		ifNotNil: [asset imageUrlWidth: width].
	
	html figure class: 'inlineAssetImage'; with: [
		img := html image
			url: url;
			yourself.
		width ifNotNil: [img width: width greaseString].
		html figureCaption: [
			self visitReference: aViaPrAssetImage.
		
			asset comment ifNotBlank: [:text |
				| popoverOptions |
				popoverOptions := {
					#title->''.
					#content->(VIAHelper inlineHtmlFromPillar: text).
					#closeable->true.
					#placement->'auto-top'.
					#trigger->'click'.
					#multi->true.
					#padding->true.
				} asDictionary.

				html span
					script: (html jQuery this call: 'webuiPopover' with: popoverOptions);
					class: 'assetInfo';
					with: [
						html iconLegalNotice]].
			
		]]