as yet unclassified
visitAudioPlayer: anAudioPlayer
	self addFile: anAudioPlayer audioFileReference title: ('Audio ', audioCounter greaseString).
	audioCounter := audioCounter + 1.