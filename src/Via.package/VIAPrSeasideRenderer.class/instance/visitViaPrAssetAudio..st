as yet unclassified
visitViaPrAssetAudio: aViaPrAssetAudio
	| url asset start stop |
	
	asset := aViaPrAssetAudio asset.
	asset ifNil: [ html span: 'AUDIONOTFOUND'. ^ self ].

	start := aViaPrAssetAudio parameters at: 'start' ifPresent: [:s | s asInteger] ifAbsent: [nil].
	stop := aViaPrAssetAudio parameters at: 'stop' ifPresent: [:s | s asInteger] ifAbsent: [nil].
	
	url := (start notNil or: [ stop notNil ])
		ifTrue: [asset audioUrlStart: start stop: stop]
		ifFalse: [asset audioUrl].
	
	html span class: 'inlineAssetAudio'; with: [
		
		| audioId |
		audioId := html nextId greaseString.
		
		html audio
			id: audioId;
			controls: true;
			preload: 'auto';
			url: url.
	"		self renderAssetInfo: anAudioPlayer audioAsset on: html."

	"		self renderAudioTranscription: anAudioPlayer on: html."

		html scriptDefer: (String streamContents: [:s |
			s
"				nextPutAll: 'var player', audioId, ' = $(""#';"
				nextPutAll: '$("#';
				nextPutAll: audioId;
				nextPutAll: '").mediaelementplayer({
	features: [ "playpause" ],
	pauseOtherPlayers: true,
	enableKeyboard: false,
	defaultAudioWidth: 50,
	defaultAudioHeight: 40,
	})[0];'.

		])
	]