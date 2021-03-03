rendering
renderContentOn: html
"	html script: 'setTimeout(function() {location.reload()}, 6000);'."	
	html div class: 'testDriveController'; with: [
		html heading
			class: 'title';
			with: [
				html iconTestdrive; space.
				html text: 'TESTDRIVE'].

		html span style: 'float:right'; with: self currentUser displayName.
		html anchor
			url: (VIAHelper testdriveUrlForId: testdriveId);
			with: 'Reset'.
		html space.

		html popupAnchor
			dependent: true;
"			windowTitle: 'TestdriveSecondView';"
			url: (VIAHelper testdriveUrlForId: testdriveId);
			with: 'Duplicate'.
		
	]