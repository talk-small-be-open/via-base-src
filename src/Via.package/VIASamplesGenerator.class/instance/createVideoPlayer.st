as yet unclassified
createVideoPlayer
	| element asset web |
	
	web := VIAWebFileReference new
		url: 'http://mediaelementjs.com/media/echo-hereweare.mp4';
		yourself.
		
	asset := VIAVideoAsset new
		fileReference: web;
		yourself.

	element := (VIAVideoPlayer new
		videoAsset: asset;
		yourself).

	^element