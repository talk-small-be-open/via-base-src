rendering-visitor
renderSrgVideoPlayer: aVideoPlayer on: html
	html div: [
		html iconFilm; space.
		html text: 'VIDEO SRG'.
		html break.
		html text: aVideoPlayer videoId]