as yet unclassified
visitViaPrAssetImage: aViaPrAssetImage
	| width asset |
	
	asset := aViaPrAssetImage asset.
	asset ifNil: [ html span: 'IMAGENOTFOUND'. ^ self ].
	
	width := aViaPrAssetImage width.
	
	html figure class: 'inlineAssetImage'; with: [
		asset imageTagWidth: width on: html.
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