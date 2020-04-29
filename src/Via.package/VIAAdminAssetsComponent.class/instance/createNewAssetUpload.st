actions
createNewAssetUpload
	| assetClass |
	
	uploader := VIAUploaderComponent new
		targetBasePath: (self db propertyAt: #fileStoragePath);
		targetRelativePath: (self wd propertyAt: #assetsRelativePath);
		yourself.
	
	assetClass := self chooseFrom: {VIAImageAsset. VIAAudioAsset. VIAVideoAsset} title: 'Typ?'.
	assetClass ifNotNil: [
		self show: uploader onAnswer: [:answer |
			answer ifNotNil: [
				| asset |
				
				asset := assetClass takeFromFileReference: answer.
				self wd addAsset: asset.	
	]]]