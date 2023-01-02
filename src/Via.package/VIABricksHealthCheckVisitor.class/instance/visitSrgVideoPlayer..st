as yet unclassified
visitSrgVideoPlayer: aPlayer
	self captureErrorFor: aPlayer during: [
		aPlayer checkExternalResourceAvailable ifFalse: [
			self add: aPlayer warning: ('SRG Video not available. ID: ', aPlayer videoId)
		]
	]