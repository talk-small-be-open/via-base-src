as yet unclassified
visitSrgVideoPlayer: aPlayer
	self captureErrorFor: aPlayer during: [
		aPlayer checkExternalResourceAvailable ifFalse: [
			self add: aPlayer warning: ('SRG Video nicht verfügbar ID: ', aPlayer videoId)
		]
	]