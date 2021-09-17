actions
reuploadFor: anAsset

	"Double check"
	(self wd hasReleasedModulesUsingAsset: anAsset) ifTrue: [
		(self confirm: 'CAREFUL!. Asset is used in published module(s)! Continue?') ifFalse: [ ^ self ]
	].

	uploader := VIAUploaderComponent new
		targetBasePath: (self db propertyAt: #webRootPath);
		targetRelativePath: self website assetsRelativePath;
		yourself.
	
	self show: uploader onAnswer: [:answer |
		answer ifNotNil: [
			"Check if same type"
			(answer sameMainType: anAsset fileReference)
				ifFalse: [ self inform: 'Wrong type for replacement.' ]
				ifTrue: [
					anAsset deleteTransformedMediaFiles.
					anAsset fileReference deleteFile.
					anAsset takeFromFileReference: answer ].
	]]