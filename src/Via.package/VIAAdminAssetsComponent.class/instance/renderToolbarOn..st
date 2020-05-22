rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [self createNewAssetsWithPlUpload];
		with: [
			html iconUpload; space.
			html text: 'Multi-upload assets ...'].
"Needs love, but obsolete.	html space.
	html skAnchorButton
		callback: [self createNewAssetUpload];
		with: 'Classic simple upload ...'."
	self ifAdmin: [
		html space.
		html skAnchorButton
			callback: [self createNewAssetChooseFile];
			with: '(Experts) After FTP: New from file path ...'.
		html space.
		html skAnchorButton
			callback: [self rebuildVideoThumbnails];
			with: 'Rebuild video thumbnails'].
	html form: [
		html textInput on: #searchString of: self.
		html submitButton callback: [self performSearch]; with: 'Search'.
		html skAnchorButton
			callback: [ self showAll ];
			with: 'Show all'	].
