rendering
renderContentOn: html

	html paragraph: 'Important: Use the Chrome browser, if your browser doesn''t work.'.
	html form id: 'audioRecorderForm'; with: [

		html label: 'Input source'.
		html skRow: [
			html skColumnWidth: 'five' with: [
				html select
					name: 'audioRecorderSourceId';
	"				callback: [:value | self jsInputDeviceId: value ];"
					id: 'audioRecorderSources' ].
			html skColumnWidth: 'seven' with: [
				html label: [ 
					html checkbox
						on: #optimizeAudio of: self;
						submitOnChange.
					html span class: 'label-body'; with: ' Optimize audio (Trim silence, normalize volume, cut low frequencies)'
				]].
			html hiddenInput callback: [ self receiveAudioSourceId ].
"			html paragraph: jsInputDeviceId."
		].
	
"	html submitButton with: 'Choose'."

	"	html anchor id: 'audioRecorderDownload'; with: 'Download'."
		html skAnchorButton id: 'audioRecorderStart'; with: [ html iconRecord; space; text: 'Start' ].
		html skAnchorButton id: 'audioRecorderStop'; with: [ html iconRecord; space; text: 'Stop'].
		html skAnchorButton callback: [ self dismiss ]; with: 'Cancel'.

		html div class: 'display:none'; id: 'audioRecorderUploadProgress'; with: [ 
			html span: 'Uploading, please wait ...'].
		
		fileReference ifNotNil: [
			html div: [
				html label: 'Prelisten'.
				html audio
					id: 'audioRecorderPlayer';
					controls: true;
					url: fileReference url ].
			html div: [
				html label: 'Title'.
				html textInput
					class: 'u-full-width';
					on: #title of: fileReference
			].
			html div: [ 
				html submitButton callback: [ self storeAudio ]; with: 'Save recording!']
		]
	].

	html scriptDefer: (self javascriptOn: html)