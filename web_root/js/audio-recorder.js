// JavaScript for the VIAAudioRecorder component


function startAudioRecorder(uploadSessionUuid, inputDeviceId, callback) {

	const player = document.getElementById('audioRecorderPlayer');

	let shouldStop = false;
	let stopped = false;
	const downloadLink = document.getElementById('audioRecorderDownload');
	const startButton = document.getElementById('audioRecorderStart');
	const stopButton = document.getElementById('audioRecorderStop');
	const sourcesList = document.getElementById('audioRecorderSources');
	const progress = document.getElementById('audioRecorderUploadProgress');

	$(progress).hide();
	$(stopButton).hide();


	// Choose microphone
	var inputDevices;
	var chosenInputDeviceId = inputDeviceId;

	navigator.mediaDevices.enumerateDevices().then((devices) => {
	  inputDevices = devices.filter((d) => d.kind === 'audioinput');

		// Create the list of inputs
		inputDevices.forEach(function(e) {
			var o = new Option(e.label, e.deviceId);
			$(sourcesList).append(o);			
		});

		$(sourcesList).val(chosenInputDeviceId);

//		console.log(inputDevices);
	});


// 	sourcesList.addEventListener('change', function() {
// 		chosenInputDeviceId = $(sourcesList).val();
// //		return true;
// 	});
	
	stopButton.addEventListener('click', function() {
		shouldStop = true;
		console.log('Recording stop');
		$(stopButton).removeClass('recording');
		$(progress).show();
		$(startButton).show();
		$(stopButton).hide();
	});

	startButton.addEventListener('click', function() {
		$(stopButton).addClass('recording');
		console.log('Recording start');
		$(startButton).hide();
		$(stopButton).show();
		navigator.mediaDevices.getUserMedia({
			audio: {
				deviceId: chosenInputDeviceId
			},
//			audio: true,
			video: false
		}).then(handleMicrophoneSuccess);
	});

	const handleMicrophoneSuccess = function(stream) {
		const options = {mimeType: 'audio/webm;codecs=opus', audioBitsPerSecond: 128000};
//		const options = {mimeType: 'audio/m4a', audioBitsPerSecond: 128000};
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

	
}
