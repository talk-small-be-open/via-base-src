rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [self createNewAssetsWithPlUpload];
		with: [
			html iconUpload; space.
			html text: 'Multi-upload assets ...'].
	html space.
	html skAnchorButton
		callback: [ self openAudioRecorder ];
		with: [ html iconRecord; space; text: 'Record audio' ].
	html space.
	html skAnchorButton
		callback: [ self showAll ];
		with: 'Show all'.
"Needs love, but obsolete.	html space.
	html skAnchorButton
		callback: [self createNewAssetUpload];
		with: 'Classic simple upload ...'."

	self renderAdminToolbarOn: html.

	html form: [
		self renderSearchStringOn: html.
		self renderSearchTypeOn: html.
		self renderSearchPerformOn: html.
		self renderSortOn: html
	].