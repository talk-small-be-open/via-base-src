rendering-visitor
renderSrgVideoPlayer: aVideoPlayer on: html
	self renderInputEditorFor: aVideoPlayer on: html with: [
		html label: 'SRG video ID'.
		html select
			list: { 'SRF'. 'RTS'. 'RSI'. 'RTR'. 'SWI' };
			on: #businessUnit of: aVideoPlayer.
		html space.
		html textInput
			style: 'width: 30em;';
			on: #videoId of: aVideoPlayer.
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

	]