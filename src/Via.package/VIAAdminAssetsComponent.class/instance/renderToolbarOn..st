rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [self createNewAssetsWithPlUpload];
		with: '+ Multi-upload assets ...'.
	html space.
	html skAnchorButton
		callback: [self createNewAssetUpload];
		with: 'Classic simple upload ...'.
	self ifAdmin: [
		html space.
		html skAnchorButton
			callback: [self createNewAssetChooseFile];
			with: 'After FTP: New from file path ...'.
		html space.
		html skAnchorButton
			callback: [self rebuildVideoThumbnails];
			with: 'Rebuild video thumbnails ...'].
	html form: [
		html textInput on: #searchString of: self.
		html submitButton callback: [self performSearch]; with: 'Search'
	]