rendering
renderAdminToolbarOn: html
	html space.
	html skAnchorButton
		callback: [self showUnused];
		with: 'Show unused'.
	html space.
	html skAnchorButton
		callback: [self showUsageReport];
		with: 'Show usage report'.
	self ifAdmin: [
		html div: [
			html space.
			html skAnchorButton
				callback: [ self cleanupAndRebuildArtefacts ];
				with: 'Cleanup and recreate'.
			html space.
			html skAnchorButton
				callback: [self createNewAssetChooseFile];
				with: 'New from path (FTP) ...'.
	"		html space.
			html skAnchorButton
				callback: [self rebuildVideoThumbnails];
				with: 'Rebuild video thumbs'."

			]]