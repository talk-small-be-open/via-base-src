rendering
renderModuleInfo: aModule on: html
	html span: aModule infoOneliner.
	html text: ','.
	html space.
	html span
		selectOnClick;
		with: aModule permaUrlWithVersion.

	html text: ', Rating: '.
	html text: aModule rating value asString.
	html text: ', Started: '.
	html text: (self countInWork: aModule) asString.
	html text: ', Finished: '.
	html text: (self countFinished: aModule) asString.

