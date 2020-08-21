as yet unclassified
downloadAssetsZipPackage: aModule
	| file |
	file := aModule generateDownloadAssetsZipPackage.
	self sendFileToBrowser: file named: (aModule fileDisplayName, '_AssetsPackage.zip')