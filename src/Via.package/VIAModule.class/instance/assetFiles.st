as yet unclassified
assetFiles
	| visitor |
	visitor := VIAGatherAssetFilesForZipPackageVisitor new.
	self acceptVisitor: visitor.
	^visitor files