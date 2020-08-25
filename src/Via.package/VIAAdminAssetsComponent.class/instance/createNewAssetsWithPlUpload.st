actions
createNewAssetsWithPlUpload
	| assetClass |
		
	assetClass := self chooseFrom: {VIAImageAsset. VIAAudioAsset. VIAVideoAsset} title: 'Typ?'.
	assetClass ifNotNil: [

		uploader := VIAPlUploadComponent new
			targetBasePath: (self db propertyAt: #fileStoragePath);
			targetRelativePath: (self wd propertyAt: #assetsRelativePath);
			infoMessage: ('File type: ', assetClass displayName);
			yourself.


		self show: uploader onAnswer: [:answerCollection |
			answerCollection ifNotBlank: [
				| newAssets |
				newAssets := OrderedCollection new.
				answerCollection do: [:each |
					| asset |
					
					asset := assetClass takeFromFileReference: each.
					newAssets add: asset.
					self wd addAsset: asset].
				self showAssets: newAssets
	
	]]].

