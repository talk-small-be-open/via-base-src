as yet unclassified
createAudioPlayer
	| element asset web |
	
	web := VIAWebFileReference new
		url: 'http://mediaelementjs.com/media/AirReview-Landmarks-02-ChasingCorporate.mp3';
		yourself.
		
	asset := VIAAudioAsset new
		fileReference: web;
		yourself.

	element := (VIAAudioPlayer new
		audioAsset: asset;
		yourself).

	^element