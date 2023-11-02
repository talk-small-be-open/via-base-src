rendering
javascriptOn: html
	| js jsUploadedEventHandler |
	jsUploadedEventHandler := (html jQuery ajax
		callback: [:name | self ajaxUploadedFile: name]
		value: (JSStream on: 'tmpFilename');
		onSuccess: 'setTimeout(function() {$("#audioRecorderForm").submit()}, 1000)';
		onError: (html javascript alert: 'Error with ajax communication to application!')).

	"OPTIMIZE: Wie generiert man globale Funktionsaufrufe ohne window?"
	js := html jsWindow
		call: 'startAudioRecorder'
		with: uploadSessionUuid
		with: jsInputDeviceId
		with: (jsUploadedEventHandler asFunction: #(tmpFilename)).

	^ js