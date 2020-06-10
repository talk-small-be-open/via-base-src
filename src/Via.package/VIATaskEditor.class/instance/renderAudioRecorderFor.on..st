rendering
renderAudioRecorderFor: anAudioPlayer on: html
	html skAnchorButton
		callback: [ self openAudioRecorderFor: anAudioPlayer ];
		with: 'Record right here!'