actions
deleteAsset: anAsset
	(self confirmYesNo: 'Delete?') ifTrue: [
		self wd deleteAsset: anAsset]