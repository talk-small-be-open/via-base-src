as yet unclassified
visitVideoPlayer: aVideoPlayer
	self addFile: aVideoPlayer videoFileReference title: ('Video ', videoCounter greaseString).
	videoCounter := videoCounter + 1.