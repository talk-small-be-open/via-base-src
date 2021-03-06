rendering-visitor
renderMediaelementVideoPlayer: aVideoPlayer on: html
	| videoId tag videoContainer |

	videoId := html nextId greaseString.

	tag := html div class: 'videoPlayer'.

	tag id: 'videoPlayer', videoId.

	tag with: [
		videoContainer := html div class: 'videoContainer'.
		
		aVideoPlayer width ifNotBlank: [
			videoContainer style: ('max-width:', (aVideoPlayer width greaseString, 'px')).
			tag style: ('max-height:', (aVideoPlayer height greaseString, 'px')).
		].
		
		videoContainer with: [
			| videoTag |
			videoTag := html video.
			videoTag
				id: videoId;
				preload: 'none'; "none = recommended by mediaelement.js"
	"			preload: 'metadata';"
				poster: aVideoPlayer posterUrl;
				noTab;
				controls: true;
				autoplay: false;
				attributeAt: 'playsinline' put: true;
				a: 'muted' p: aVideoPlayer noSound.

			aVideoPlayer width ifNotBlank: [
				videoTag
"					width: '100%';
					height: 'auto'."
"					width: (aVideoPlayer width greaseString, 'px');
					height: (aVideoPlayer height greaseString, 'px')."
"					style: ('max-width:', (aVideoPlayer width greaseString, 'px'));
					style: ('max-height:', (aVideoPlayer height greaseString, 'px'))."
			].
				
			videoTag with: [
				html source
					type: aVideoPlayer videoMimeType;
					url: aVideoPlayer videoUrl.
				html text: 'Your browser does not support the video tag.'].
			self renderAssetInfo: aVideoPlayer videoAsset on: html.
		].

		self renderVideoTranscription: aVideoPlayer on: html.

		html scriptDefer: (self jsForMediaelementVideoPlayer: aVideoPlayer id: videoId).

	].