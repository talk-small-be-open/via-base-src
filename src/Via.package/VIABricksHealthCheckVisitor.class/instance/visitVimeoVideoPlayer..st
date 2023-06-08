as yet unclassified
visitVimeoVideoPlayer: aPlayer
	self captureErrorFor: aPlayer during: [
		aPlayer isFullyDefined ifTrue: [
			aPlayer checkExternalResourceAvailable ifFalse: [
				self add: aPlayer warning: ('Vimeo Video not available, with ID ', aPlayer videoId)
			]
		]
	]