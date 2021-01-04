actions
createNewAssetsWithPlUpload
	| assetClass |
		
	assetClass := self chooseFrom: VIAMediaAsset subclasses title: 'Type?'.
	assetClass ifNotNil: [

		uploader := VIAPlUploadComponent new
			targetBasePath: (self db propertyAt: #webRootPath);
			targetRelativePath: self website assetsRelativePath;
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
				self clear.
				self showAssets: newAssets
	
	]]].

