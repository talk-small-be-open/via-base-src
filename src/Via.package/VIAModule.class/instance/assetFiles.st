as yet unclassified
assetFiles
	| visitor |
	visitor := VIAGatherAssetFilesForZipPackageVisitor new.
	self tasks do: [:each |
		each acceptVisitor: visitor].
	^visitor files