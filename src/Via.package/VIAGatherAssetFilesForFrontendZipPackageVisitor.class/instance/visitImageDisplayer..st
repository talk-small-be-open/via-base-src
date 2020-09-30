as yet unclassified
visitImageDisplayer: anImageDisplayer
	self addFile: anImageDisplayer imageAsset fileReference title: ('Image ', imageCounter greaseString).
	imageCounter := imageCounter + 1.