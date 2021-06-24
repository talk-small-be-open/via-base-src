rendering-visitor
renderYoutubeVideoPlayer: aVideoPlayer on: html
	html div: [
		html iconFilm; space.
		html text: 'VIDEO YouTube'.
		html break.
		html text: aVideoPlayer videoId]