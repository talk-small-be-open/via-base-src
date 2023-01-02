as yet unclassified
visitYoutubeVideoPlayer: aPlayer
	self captureErrorFor: aPlayer during: [
		aPlayer checkExternalResourceAvailable ifFalse: [
			self add: aPlayer warning: ('Youtube Video not available. ID: ', aPlayer videoId)
		]
	]