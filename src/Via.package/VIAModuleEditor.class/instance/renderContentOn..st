as yet unclassified
renderContentOn: html
	self renderValidationResults: validationResult on: html.
	self renderPillarPreviewDialogOn: html.

	html form: [
		html label: 'Title of module'.
		html textInput on: #title of: model.
		self ifFeature: #module:indexCode then: [
			html label: 'Index code' help: '(E.g. chapter number like "12.5" or similar)'.
			html textInput on: #string of: model indexCode].
		self ifFeature: #module:isExam then: [
			html label: [
				html checkbox on: #isExam of: model.
				html space.
				html text: 'Exam only (Not public searchable)']].
		self ifFeature: #module:isPrivate then: [
			html label: [
				html checkbox on: #isPrivate of: model.
				html space.
				html text: 'Private (Accessible by link only)']].
		self ifFeature: #module:allowIgnoreTasks then: [
			html label: [
				html checkbox on: #allowIgnoreTasks of: model.
				html space.
				html text: 'Allow ignoring of tasks']].
"Deprecated, us level tags		html label: 'Language level' help: '(E.g. A1-B2, ...)'.
		html textInput on: #exerciseLevel of: model."
		html label: 'Image' help: '(Main image, displayed in search results etc.)'.
		html select
			beOptional;
			list: self wd imageAssets;
			labels: [:each | each displayName];
			on: #imageAsset of: model.
		html label: 'Authors'.
		html multiSelect
			list: self wd authors sortedBySortKey;
			labels: [:each | each displayName];
			on: #authorUsers of: model.
		html label: 'Co-Authors'.
		html multiSelect
			list: self wd authors sortedBySortKey;
			labels: [:each | each displayName];
			on: #coAuthorUsers of: model.
		html label: 'Level'.
		html select
			labels: [:each | each displayName];
			list: (VIALevelTag allSortedForWebsite: self website);
			on: #levelTag of: model classification.
		html label: 'Duration'.
		html select
			labels: [:each | each displayName];
			list: (VIADurationTag allSortedForWebsite: self website);
			on: #durationTag of: model classification.
		html label: 'Footnotes'.
		self renderPillarInput: #footnotesPillarString of: model on: html.
		self ifFeature: #module:teacherNotes then: [
			html label: 'Remarks for teachers'.
			self renderPillarInput: #teacherNotesPillarString of: model on: html].

		self ifFeature: #module:geoInformation then: [
			self renderGeoInformationOn: html].

		self renderFormButtonsOn: html].