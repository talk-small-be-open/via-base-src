actions
createNewAssetsWithPlUpload
	| assetClass |
	
	uploader := VIAPlUploadComponent new
		targetBasePath: (self db propertyAt: #fileStoragePath);
		targetRelativePath: (self wd propertyAt: #assetsRelativePath);
		yourself.
	
	assetClass := self chooseFrom: {VIAImageAsset. VIAAudioAsset. VIAVideoAsset} title: 'Typ?'.
	assetClass ifNotNil: [
		self show: uploader onAnswer: [:answerCollection |
			answerCollection ifNotBlank: [
				answerCollection do: [:each |
					| asset |
					
					asset := assetClass takeFromFileReference: each.
					self wd addAsset: asset]
	]]]