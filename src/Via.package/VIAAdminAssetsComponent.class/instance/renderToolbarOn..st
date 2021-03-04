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
	self ifAdmin: [
		html break.
		html strong: 'Experts: '.
		html space.
		html skAnchorButton
			callback: [self createNewAssetChooseFile];
			with: 'New from path (FTP) ...'.
"		html space.
		html skAnchorButton
			callback: [self rebuildVideoThumbnails];
			with: 'Rebuild video thumbs'."
		html space.
		html skAnchorButton
			callback: [self showUnused];
			with: 'Show unused'.
		html space.
		html skAnchorButton
			callback: [self showUsageReport];
			with: 'Show usage report'.
	].
	html form: [
		self renderSearchStringOn: html.
		self renderSearchTypeOn: html.
		self renderSearchPerformOn: html.
	].