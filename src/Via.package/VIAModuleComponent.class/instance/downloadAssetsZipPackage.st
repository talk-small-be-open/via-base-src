actions
downloadAssetsZipPackage
	| file |
	(self confirmYesNo: 'module:reallyDownloadAssetsZipQM') ifTrue: [
		file := model generateDownloadAssetsFrontendZipPackage.
		self offerDownload: file named: (model fileDisplayName, '_MediaPackage.zip') message: nil]