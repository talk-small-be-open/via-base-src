javascript
jsForMediaelementVideoPlayer: aVideoPlayer id: aVideoId

	aVideoPlayer isFullyDefined ifFalse: [ ^ nil ].

	^(String streamContents: [:s |
			s
				nextPutAll: 'var player', aVideoId, ' = $("#';
				nextPutAll: aVideoId;
				nextPutAll: '").mediaelementplayer({
	pauseOtherPlayers: true,
	alwaysShowControls: false,
	alwaysShowHours: false,
	showTimecodeFrameCount: false,
	stretching: "responsive",
	showPosterWhenEnded: true,
	})[0];'.

			aVideoPlayer noSound ifTrue: [
				s nextPutAll: 'player', aVideoId, '.setMuted(true)'].
				

		])