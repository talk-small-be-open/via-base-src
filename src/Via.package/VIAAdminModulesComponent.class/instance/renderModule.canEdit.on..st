rendering
renderModule: aModule canEdit: canEdit on: html
	html tableData: [
		aModule isDraft
			ifTrue: [html badgeWarning: ('DRAFT ', aModule versionNumberString)]
			ifFalse: [html badgeSuccess: ('RELEASED ', aModule versionNumberString)]
	].
	html tableData class: 'moduleName'; with: [
		html text: aModule displayName.
		aModule isExam ifTrue: [
			html space.
			html badgeSuccess: 'EXAM ONLY'].
		aModule isPrivate ifTrue: [
			html space.
			html badgeWarning: 'PRIVATE'].
	].
	html tableData class: 'actions'; with: [
		(self canMakeVewVersionModule: aModule) ifTrue: [
			html anchor
				callback: [self createNewModuleVersion: aModule];
				title: 'Create a new draft version for this module';
				with: 'New version'].
		canEdit ifTrue: [
			html anchor
				callback: [self editModule: aModule];
				with: 'Edit'.
			aModule hasVersions ifTrue: [
				html anchor
					callback: [self showVersionHistory: aModule];
					title: 'Show all versions history';
					with: 'Versions'].
			self ifAdmin: [
				aModule isDraft
					ifTrue: [
						html anchor
							callback: [self releaseModule: aModule];
							title: 'Publish this module!';
							with: 'Release']]].
		html popupAnchor
			dependent: true;
			windowTitle: 'VIA Preview';
			callback: [self testdriveModule: aModule];
"							target: '_blank';"
			title: 'Preview and test module';
			with: 'Test'.
	].
	html tableData class: 'actions extras'; with: [
		html anchor
			callback: [self copyModule: aModule];
			title: 'Create an independent copy as a new module draft';
			with: 'Copy'.
		canEdit ifTrue: [
			self ifAdmin: [
				html anchor
					callback: [self deleteModule: aModule];
					with: 'Delete'.
				html anchor
					callback: [self resetRatingModule: aModule];
					with: 'Reset rating'.
				aModule isDraft
					ifFalse: [
						html anchor
							callback: [self unreleaseModule: aModule];
							title: 'Unpublish this module';
							with: 'Un-Release'].
				html anchor
					callback: [ self downloadRawSourceModule: aModule ];
					title: 'Download raw source file';
					with: 'raw.txt'.
				html anchor
					callback: [ self downloadAssetsZipPackage: aModule ];
					title: 'Download all used assets (zip)';
					with: 'assets.zip'.
			].
			html anchor
				callback: [self prepareAssetsForModule: aModule];
				title: 'Use this, if image/video/audio are not displayed correctly';
				with: 'Rebuild assets'].
	html anchor
		url: '/lib/embed_test.html?url=', (VIAHelper urlencode: aModule permaUrlEmbed);
		target: '_blank';
		title: 'Show preview of embedded module';
		with: 'Embedded'
	]