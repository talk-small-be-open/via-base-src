rendering-visitor
renderMediaelementAudioPlayer: anAudioPlayer on: html
	| audioId |
	audioId := html nextId greaseString.
	
	html div class: 'audioPlayer'; with: [
		html audio
			preload: 'none'; "none = recommended by mediaelement.js"
"			preload: 'metadata';"
			noTab;
			autoplay: false;
			id: audioId;
			controls: true;
"			url: anAudioPlayer audioUrl."
			with: [
				anAudioPlayer hasAudio ifTrue: [
					html source
						url: anAudioPlayer audioUrl;
						type: anAudioPlayer audioMimeType.
				].
			].

		self renderAssetInfo: anAudioPlayer audioAsset on: html.

		self renderAudioTranscription: anAudioPlayer on: html.

		html scriptDefer: (self jsForMediaelementAudioPlayer: anAudioPlayer id: audioId)]