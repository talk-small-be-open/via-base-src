as yet unclassified
openAudioRecorderFor: anAudioPlayer
	| recorder |
	recorder := VIAAudioRecorderComponent new.
	self showLightbox: 'Record' component: recorder wide: true onAnswer: [:asset |
		asset ifNotNil: [
			anAudioPlayer audioAsset: asset ]
	]