as yet unclassified
openAudioRecorder
	| recorder |
	recorder := VIAAudioRecorderComponent new.
	self clear.
	self showLightbox: 'Record from your microphone' component: recorder wide: true onAnswer: [:asset |
		asset ifNotNil: [
			self showAssets: {asset} ]
	]