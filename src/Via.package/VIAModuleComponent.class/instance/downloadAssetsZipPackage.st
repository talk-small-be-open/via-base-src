actions
downloadAssetsZipPackage
	| file |
	file := model generateDownloadAssetsFrontendZipPackage.
	self sendFileToBrowser: file named: (model fileDisplayName, '_MediaPackage.zip')