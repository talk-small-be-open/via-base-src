rendering-visitor
renderVimeoVideoPlayer: aVideoPlayer on: html
	html div: [
		html iconFilm; space.
		html text: 'VIDEO Vimeo'.
		html break.
		html text: aVideoPlayer videoId]