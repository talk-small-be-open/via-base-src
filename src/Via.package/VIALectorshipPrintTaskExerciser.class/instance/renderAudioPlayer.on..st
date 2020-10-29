rendering-visitor
renderAudioPlayer: anAudioPlayer on: html
	html div class: 'audioPlayer'; with: [
		html iconAudio.
		html text: 'AUDIO'.

		anAudioPlayer hasTranscription ifTrue: [
			html div class: 'transcriptionText'; with: [
				html lectorText: 'Transcription:'; break.
				html pillar: anAudioPlayer transcriptionPillar pillarDocument]]]