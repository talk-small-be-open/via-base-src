actions
deleteAsset: anAsset

	"Double check"
	(self wd hasReleasedModulesUsingAsset: anAsset) ifTrue: [ self inform: 'Not allowed. Asset is used in published module(s)'. ^ self ].

	(self confirmYesNo: 'admin:reallyDeleteQM') ifTrue: [
		self wd deleteAsset: anAsset.
		self hideAsset: anAsset.
	]