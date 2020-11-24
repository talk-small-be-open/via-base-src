rendering
renderVideoTranscription: aVideoPlayer on: html
	aVideoPlayer hasTranscription ifTrue: [
		html div
			class: 'transcriptionContainer';
			with: [
				html ukCard
					class: 'uk-card-default uk-card-body uk-card-small videoTranscription';
					with: [
						html strong t: 'exerciser:videoTranscription'.
						html div class: 'transcriptionText'; with: [
							html pillar: aVideoPlayer transcriptionPillar pillarDocument]].
		]]