rendering
renderAssetInfo: anAsset on: html
	anAsset ifNil: [^self].
	anAsset comment ifNotBlank: [:text |
			| popoverOptions |
			popoverOptions := {
				#title->''.
				#content->(VIAHelper inlineHtmlFromPillar: text).
				#closeable->true.
				#placement->'top'.
				#trigger->'click'.
				#multi->true.
				#padding->true.
			} asDictionary.


		html span
			script: (html jQuery this call: 'webuiPopover' with: popoverOptions);
			class: 'assetInfo';
			with: [
				html iconLegalNotice]].
