as yet unclassified
visitVimeoVideoPlayer: aPlayer
	self captureErrorFor: aPlayer during: [
		aPlayer checkExternalResourceAvailable ifFalse: [
			self add: aPlayer warning: ('Vimeo Video not available. ID: ', aPlayer videoId)
		]
	]