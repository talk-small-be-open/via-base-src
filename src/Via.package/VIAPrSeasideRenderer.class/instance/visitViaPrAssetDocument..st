as yet unclassified
visitViaPrAssetDocument: aViaPrAssetDocument
	| asset |
	
	asset := aViaPrAssetDocument asset.
	asset ifNil: [ html span: 'DOCUMENTNOTFOUND'. ^ self ].

	html span class: 'inlineAssetDocument'; with: [
		| label |
		label := (aViaPrAssetDocument captionText ifNil: [asset title]).
		html anchor
			callback: [ self downloadAsset: asset ];
			with: [
				html iconDocument.
				label ifNotBlank: [
					html space.
					html text: label].
	]].