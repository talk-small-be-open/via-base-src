as yet unclassified
visitSrgVideoPlayer: aPlayer
	self captureErrorFor: aPlayer during: [
		aPlayer isFullyDefined ifTrue: [
			aPlayer checkExternalResourceAvailable ifFalse: [
				self add: aPlayer warning: ('SRG Video not available, with ID ', aPlayer videoId)
			]
		]
	]