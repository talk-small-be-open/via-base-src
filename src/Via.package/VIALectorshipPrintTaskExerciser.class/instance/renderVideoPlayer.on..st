rendering-visitor
renderVideoPlayer: aVideoPlayer on: html
	html div with: [
		html div: [
			html iconFilm; space.
			html text: 'VIDEO'.
			html break.
			html text: aVideoPlayer videoUrl].
		html image
			class: 'videoPreview';
			url: aVideoPlayer posterUrl.

		aVideoPlayer hasTranscription ifTrue: [
			html div class: 'transcriptionText'; with: [
				html lectorText: 'Transcription:'; break.
				html pillar: aVideoPlayer transcriptionPillar pillarDocument]].
	]