rendering
renderAudioRecorderFor: anAudioPlayer on: html
	html skAnchorButton
		callback: [ self openAudioRecorderFor: anAudioPlayer ];
		with: [
			html iconRecord; space.
			html text: 'Record audio ...']