rendering-visitor
renderVideoPlayer: aVideoPlayer on: html
	html div class: 'inputEditor'; with: [
		html select
			list: self wd videoAssets reversed;
			labels: [:each | each displayName];
			beOptional;
			on: #videoAsset of: aVideoPlayer.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: 'Start time [format 0:00:00]'.
				html textInput on: #startTimeString of: aVideoPlayer].
			html skColumnWidth: 'three' with: [
				html label: 'End time [format 0:00:00]'.
				html textInput on: #endTimeString of: aVideoPlayer].
			html skColumnWidth: 'three' with: [
				html label: 'Width: '.
				html numberInput
					min: 10;
					"max: 1000;"
					on: #width of: aVideoPlayer
			].
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #noSound of: aVideoPlayer.
					html space.
					html text: 'No sound'.
			]].
		].
		html label: 'Transcription'.
		aVideoPlayer transcriptionPillar isParseOk ifFalse: [
			self renderPillarSyntaxError: aVideoPlayer transcriptionPillar parseError on: html
		].

		self renderPillarInput: #pillarString of: aVideoPlayer transcriptionPillar on: html.

	]