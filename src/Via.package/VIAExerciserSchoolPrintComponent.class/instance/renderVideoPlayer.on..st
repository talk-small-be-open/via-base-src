rendering-visitor
renderVideoPlayer: aVideoPlayer on: html
	html div with: [
		html div: [
			html iconFilm; space.
			html text: 'VIDEO'].
		html image
			class: 'videoPreview';
			url: aVideoPlayer posterUrl]