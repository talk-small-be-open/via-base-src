rendering
renderContentOn: html
	fileReference ifNotNil: [
	html audio
		id: 'audioRecorderPlayer';
		controls: true;
		url: fileReference url ].

"	html anchor id: 'audioRecorderDownload'; with: 'Download'."
	html skAnchorButton id: 'audioRecorderStart'; with: 'Start'.
	html skAnchorButton id: 'audioRecorderStop'; with: 'Stop'.

	html skAnchorButton callback: [ self storeAudio ]; with: 'Use this recording!'.

	html skAnchorButton callback: [ self cancel ]; with: 'Cancel'.

	html script: (self javascriptOn: html)