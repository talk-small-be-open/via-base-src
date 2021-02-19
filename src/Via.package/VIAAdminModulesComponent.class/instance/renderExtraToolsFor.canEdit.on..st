rendering
renderExtraToolsFor: aModule canEdit: canEdit on: html
	html div class: 'extraTools'; with: [
		html anchor
			callback: [self copyModule: aModule];
			title: 'Create an independent copy as a new module draft';
			with: 'Copy module'.

		self ifAdmin: [
			aModule isLocked ifTrue: [
				html anchor
					callback: [self unlockModule: aModule];
					with: [
						html badgeDanger: 'LOCKED'.
						html text: 'Unlock']
			] ifFalse: [
				html anchor
					callback: [self lockModule: aModule];
					with: 'Lock'] ].

		canEdit ifTrue: [
			self ifAdmin: [
				html anchor
					callback: [self deleteModule: aModule];
					with: 'Delete module'.
				html anchor
					callback: [self resetRatingModule: aModule];
					with: 'Reset rating'.
				aModule isDraft
					ifFalse: [
						html anchor
							callback: [self unreleaseModule: aModule];
							title: 'Unpublish this module';
							with: 'Un-Release module'].
				html anchor
					callback: [ self downloadRawSourceModule: aModule ];
					title: 'Download raw content of the module in a text file';
					with: 'Download raw.txt'.
				html anchor
					callback: [ self downloadAssetsZipPackage: aModule ];
					title: 'Download all used assets in one zip file';
					with: 'Download assets.zip'.
				html anchor
					callback: [ self downloadLectorshipPrintVersion: aModule ];
					title: 'Download lectorship PDF print version';
					with: 'Download lector.pdf'.
				self ifDevelopment: [
					html anchor
						callback: [ self showLectorshipPrintVersion: aModule ];
						with: 'DEV: Show lector.pdf preview'].
			].
			html anchor
				callback: [self prepareAssetsForModule: aModule];
				title: 'Use this, if image/video/audio are not displayed correctly';
				with: 'Rebuild assets of this module'].
		html anchor
			url: '/lib/embed_test.html?url=', (VIAHelper urlencode: aModule permaUrlEmbed);
			target: '_blank';
			title: 'Show preview of embedded module';
			with: 'Embedded']