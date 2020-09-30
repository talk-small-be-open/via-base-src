as yet unclassified
assetFiles
	| visitor |
	visitor := VIAGatherAssetFilesForFrontendZipPackageVisitor new.
	self acceptVisitor: visitor.
	^visitor files