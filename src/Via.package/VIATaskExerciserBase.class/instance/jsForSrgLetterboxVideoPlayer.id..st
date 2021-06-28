javascript
jsForSrgLetterboxVideoPlayer: aVideoPlayer id: aVideoId
	| options urn |
	
	"See https://letterbox-web.srgssr.ch/production/api/global.html#LetterboxConfiguration"
	urn := 'urn:', aVideoPlayer businessUnit asLowercase, ':video:', aVideoPlayer videoId.
	
	options := {
		'container'->('#',aVideoId).
		'recommendations'->false.
		'fillMode'->false.
		'analytics'->false.
		'components'->{
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
		aVideoPlayer startSeconds ifNotNil: [ :es |
			loadOptions at: 'pendingSeek' put: es ].
		
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
		
		s << 'player.on(SRGLetterbox.playerEvents.CAN_PLAY, function(evt) {'.
		s << 'player.muted('.
		aVideoPlayer noSound javascriptOn: s.
		s << ')});'.

		aVideoPlayer endSeconds ifNotNil: [ :es |
			s << 'player.on(SRGLetterbox.playerEvents.TIME_UPDATE, function(evt) {'.
			s << ('if (player.currentTime() > ', es asString, ') { player.pause() };').
			s << '});'.
		].

	]

	"Remarks: SRG surprisingly has no end-time option"