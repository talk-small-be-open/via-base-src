actions
downloadAssetsZipPackage
	| file |
	file := model generateDownloadAssetsZipPackage.
	self sendFileToBrowser: file named: (model fileDisplayName, '_MediaPackage.zip')