actions
createNewAssetChooseFile
	| assetClass |
	assetClass := self chooseFrom: {VIAImageAsset. VIAAudioAsset. VIAVideoAsset} title: 'Typ?'.
	assetClass ifNotNil: [
	| path asset reference filename |
		path := self request: 'Relative path (no slashes)?' default: 'assets'.
		filename := self request: 'Filename?'.

		reference := VIALocalFileReference new
			fileBasePath: (self db propertyAt: #fileStoragePath);
			fileRelativePath: path;
			fileName: filename;
			yourself.

		asset := assetClass new
			fileReference: reference;
			yourself.

		self wd addAsset: asset.

		asset buildPreviewImage
	]