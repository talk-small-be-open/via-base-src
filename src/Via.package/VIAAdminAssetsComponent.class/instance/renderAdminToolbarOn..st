rendering
renderAdminToolbarOn: html
	self ifAdmin: [
		html break.
		html strong: 'Admins: '.
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
		html space.
		html skAnchorButton
			callback: [ self cleanupAndRebuildArtefacts ];
			with: 'Cleanup and recreate'
	]