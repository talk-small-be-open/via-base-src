rendering-visitor
renderYoutubeVideoPlayer: aPlayer on: html
	| youtubeElementId |
	
	youtubeElementId := html nextId.

	html script: (self jsForYoutubeVideoPlayer: aPlayer id: youtubeElementId).
	
	html div
		class: 'youtubePlayer';
		style: 'max-width: ', aPlayer width asString, 'px';
		with: [
			html div class: 'aspectRatioBox'; with: [
				html div id: youtubeElementId ].

		aPlayer width ifNotBlank: [
"			videoContainer style: ('max-width:', (aVideoPlayer width greaseString, 'px'))."
	"		tag style: ('max-height:', (aVideoPlayer height greaseString, 'px'))."
		].
		
	]