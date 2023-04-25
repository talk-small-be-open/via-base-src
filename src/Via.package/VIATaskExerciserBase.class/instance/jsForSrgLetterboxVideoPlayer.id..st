javascript
jsForSrgLetterboxVideoPlayer: aVideoPlayer id: aVideoId
	| options urn noStoreOption |
	
	aVideoPlayer isFullyDefined ifFalse: [ ^ nil ].
	
	"See https://letterbox-web.srgssr.ch/production/api/global.html#LetterboxConfiguration"
	urn := 'urn:', aVideoPlayer businessUnit asLowercase, ':video:', aVideoPlayer videoId.

	noStoreOption := [ :value | { 'default'->value. 'storage'->false } aD ].
	
	options := {
		'debug'->(self db isDevelopment).
		'muted'->(noStoreOption value: aVideoPlayer noSound).
		'container'->('#',aVideoId).
		'recommendations'->false.
		'continuousPlayback'->(noStoreOption value: false).
		'fillMode'->(noStoreOption value: false).
		'analytics'->false.
		'components'->{
			'audioDescription'->false.
			'controlBar'->true.
			'header'->true.
			'sharing'->false.
			'title'->true.
			'thumbnails'->true.
			'playButton'->true.
			'subdivisions'->false.
		} aD.
	} aD.
	
	^String streamContents: [:s |
		| loadOptions |
		loadOptions := Dictionary new.
"Not nice visually		aVideoPlayer startSeconds ifNotNil: [ :es |
			loadOptions at: 'pendingSeek' put: es ]."
		
		s << 'const player = new SRGLetterbox('.
		options javascriptOn: s.
		s << ');'.
		s << 'player.loadUrn('.
		urn javascriptOn: s.
		s << ','.
		loadOptions javascriptOn: s.
		s << ');'.

"		aVideoPlayer startSeconds ifNotNil: [ :es |
			s << 'player.currentTime('.
			es javascriptOn: s.
			s << ');'.
		]."
		
		"SRGLetterbox.playerEvents.CAN_PLAY"
		s << 'player.on(SRGLetterbox.videojsEvents.READY, function(evt) {'.
"		s << 'player.muted('.
		aVideoPlayer noSound javascriptOn: s.
		s << ');'."
		aVideoPlayer startSeconds ifNotNil: [ :ss |
			s << ('if (player.currentTime() != ', ss asString).
			s << ') {'.
			s << 'player.currentTime('.
			ss javascriptOn: s.
			s << ')};'.
		].
		s << '});'.

		s << 'player.on([SRGLetterbox.playerEvents.TIME_UPDATE, SRGLetterbox.playerEvents.SEEKING], function(evt) {'.
			aVideoPlayer noSound ifTrue: [
				s << 'if (!player.muted()) {player.muted(true)}'.
			].


			aVideoPlayer startSeconds ifNotNil: [ :ss |
	"			s << 'player.on([SRGLetterbox.playerEvents.TIME_UPDATE, SRGLetterbox.playerEvents.SEEKING], function(evt) {'."
				s << ('if (player.currentTime() < ', ss asString).
				s << ') {'.
				s << ('player.currentTime(', ss asString, ');').
				s << 'player.play();'.
				s << '};'.
"				s << '});'."
			].

			aVideoPlayer endSeconds ifNotNil: [ :es |
	"			s << 'player.on(SRGLetterbox.playerEvents.TIME_UPDATE, function(evt) {'."
				s << ('if (player.currentTime() > ', es asString).
				s << ') {'.
				s << ('player.currentTime(', es asString, ');').
				s << 'player.pause();'.
				s << '};'.
"				s << '});'."
			].

		s << '});'.
	]