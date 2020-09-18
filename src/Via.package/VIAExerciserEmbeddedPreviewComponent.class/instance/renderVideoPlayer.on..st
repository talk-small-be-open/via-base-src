as yet unclassified
renderVideoPlayer: aVideoPlayer on: html
	| videoId  |

	videoId := html nextId greaseString.

	html div class: 'videoPlayer'; with: [
		html table class: 'videoPlayer'; with: [
			html tableRow: [
				html tableData
					style: ('width:', (aVideoPlayer width
						ifBlank: ['auto']
						ifNotBlank: [:w | w greaseString, 'px']));
					with: [
					html div
						class: 'videoPlayer';
						style: ('height: ', (aVideoPlayer height
							ifBlank: ['auto']
							ifNotBlank: [:h | h greaseString, 'px']));
						id: 'videoPlayer', videoId;
						with: [
							html div class: 'videoContainer'; with: [
								html video
									id: videoId;
									preload: false;
					"				url: aVideoPlayer videoUrl;"
									poster: aVideoPlayer posterUrl;
									controls: true;
									autoplay: false;
									width: (aVideoPlayer width
										ifBlank: ['auto']
										ifNotBlank: [:w | w greaseString, 'px']);
									height: (aVideoPlayer height
										ifBlank: ['auto']
										ifNotBlank: [:h | h greaseString, 'px']);
									with: [
										html source
											type: aVideoPlayer videoMimeType;
											url: aVideoPlayer videoUrl.
										html text: 'Your browser does not support the video tag.'].
								self renderAssetInfo: aVideoPlayer videoAsset on: html.
							]].


					html tableData: []]].

				html scriptDefer: (self jsForVideoPlayer: aVideoPlayer id: videoId).

			]]