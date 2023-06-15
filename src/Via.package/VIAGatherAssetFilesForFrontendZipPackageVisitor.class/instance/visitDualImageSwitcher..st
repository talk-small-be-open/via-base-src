as yet unclassified
visitDualImageSwitcher: anImageSwitcher
	self addFile: anImageSwitcher imageAsset1 fileReference title: ('Image ', imageCounter greaseString, 'a').
	self addFile: anImageSwitcher imageAsset2 fileReference title: ('Image ', imageCounter greaseString, 'b').

	imageCounter := imageCounter + 1.