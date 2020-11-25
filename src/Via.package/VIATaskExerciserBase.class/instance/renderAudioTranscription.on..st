rendering
renderAudioTranscription: anAudioPlayer on: html
	anAudioPlayer hasTranscription ifTrue: [
		html div class: 'transcriptionContainer'; with: [
			html ukCard
				class: 'uk-card-default uk-card-body uk-card-small audioTranscription';
				with: [
					html strong t: 'exerciser:audioTranscription'.
					html div class: 'transcriptionText'; with: [
						html pillar: anAudioPlayer transcriptionPillar pillarDocument]]]]