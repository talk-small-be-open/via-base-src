actions
deleteAsset: anAsset
	(self confirmYesNo: 'admin:reallyDeleteQM') ifTrue: [
		self wd deleteAsset: anAsset.
		self hideAsset: anAsset.
	]