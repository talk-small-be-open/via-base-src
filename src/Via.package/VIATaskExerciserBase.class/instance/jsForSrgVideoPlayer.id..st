javascript
jsForSrgVideoPlayer: aVideoPlayer id: aVideoId
	| options urn queryString |
	
	"See http://tp.srgssr.ch/assets/docs/index.html, but could be outdated"
	urn := 'urn:', aVideoPlayer businessUnit asLowercase, ':video:', aVideoPlayer videoId.
	
	options := {
		'start'->aVideoPlayer startSeconds.
		'hideendscreen'->false.
		'hidesegments'->true.
		'preload'->'none'. "none, auto"
		'dvr'->false
	} aD.
	
	"Convert to stupid string"
	queryString := (WAUrl new queryFields: options) queryString.
	
	^String streamContents: [:s |
		s << 'var player = SRG.PlayerManager.createPlayer('.
		aVideoId javascriptOn: s.
		s << ', "embed", '.
		urn javascriptOn: s.
		s << ', false, '.
		queryString javascriptOn: s.
		s << '); '.
		
		aVideoPlayer noSound ifTrue: [ 
			s << 'player.addEventListener(SRG.SrgPlayerEvent.EVT_LOADED, function(evt) {'.
			s << 'player.mute(true);'.
			s << '});'.
		].

		aVideoPlayer endSeconds ifNotNil: [ :es |
			s << 'player.addEventListener(SRG.SrgPlayerEvent.EVT_TIME_UPDATE, function(evt) {'.
			s << ('if (evt.data.seconds > ', es asString, ') { player.pause() };').
			s << '});'.
		].

	]

	"Remarks: SRG surprisingly has no end-time option"