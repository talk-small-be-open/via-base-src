as yet unclassified
visitAudioPlayer: anAudioPlayer
	| asset |
	asset := anAudioPlayer audioAsset ifNil: [^self].

	anAudioPlayer isFragment ifTrue: [
		asset buildFragmentStart: anAudioPlayer startSeconds stop: anAudioPlayer endSeconds.
	]