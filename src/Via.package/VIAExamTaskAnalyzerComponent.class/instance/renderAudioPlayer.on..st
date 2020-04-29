rendering-visitor
renderAudioPlayer: anAudioPlayer on: html
	html div class: 'audioPlayer'; with: [
		html iconAudio; space.
		html text: 'AUDIO']