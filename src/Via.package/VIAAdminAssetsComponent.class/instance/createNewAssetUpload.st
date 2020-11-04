actions
createNewAssetUpload
	| assetClass |
	
	uploader := VIAUploaderComponent new
		targetBasePath: (self db propertyAt: #webRootPath);
		targetRelativePath: self website assetsRelativePath;
		yourself.
	
	assetClass := self chooseFrom: VIAMediaAsset subclasses title: 'Typ?'.
	assetClass ifNotNil: [
		self show: uploader onAnswer: [:answer |
			answer ifNotNil: [
				| asset |
				
				asset := assetClass takeFromFileReference: answer.
				self wd addAsset: asset.	
	]]]