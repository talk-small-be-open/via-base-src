// JavaScript for the VIAAudioRecorder component


function startAudioRecorder(uploadSessionUuid, callback) {

	const player = document.getElementById('audioRecorderPlayer');

	let shouldStop = false;
	let stopped = false;
	const downloadLink = document.getElementById('audioRecorderDownload');
	const startButton = document.getElementById('audioRecorderStart');
	const stopButton = document.getElementById('audioRecorderStop');

	stopButton.addEventListener('click', function() {
		shouldStop = true;
		console.log('Recording stop');
	});

	startButton.addEventListener('click', function() {
		console.log('Recording start');
		navigator.mediaDevices.getUserMedia({ audio: true, video: false }).then(handleMicrophoneSuccess);
	});

	const handleMicrophoneSuccess = function(stream) {
		const options = {mimeType: 'audio/webm;codecs=opus'};
		const recordedChunks = [];
		const mediaRecorder = new MediaRecorder(stream, options);

//		console.log('got stream');

		mediaRecorder.addEventListener('dataavailable', function(e) {
			if (e.data.size > 0) {
				recordedChunks.push(e.data);
				//console.log('data');
			}

			if(shouldStop === true && stopped === false) {
				mediaRecorder.stop();
				stopped = true;
			}
		});

		mediaRecorder.addEventListener('stop', function() {
			// downloadLink.href = URL.createObjectURL(new Blob(recordedChunks));
			// downloadLink.download = 'acetest.webm';

			// Uploading in background
			var fd = new FormData();
			var soundBlob = new Blob(recordedChunks);
			fd.set('data', soundBlob);

			$.ajax({
//				type: 'POST',
				method: 'POST',
				url: ('/upload_gateway/audio-recorder.php?id=' + uploadSessionUuid),
				data: fd,
				processData: false,
				cache: false,
				contentType: false
			}).done(function(tmpFilename) {
				callback(tmpFilename);
//				console.log(tmpFilename);
			});
			
		});

		mediaRecorder.start(1000);
	};

	// Choose microphone
	// navigator.mediaDevices.enumerateDevices().then((devices) => {
	//   devices = devices.filter((d) => d.kind === 'audioinput');
	// });
	// navigator.mediaDevices.getUserMedia({
	//   audio: {
	//     deviceId: devices[0].deviceId
	//   }
	// });

}
