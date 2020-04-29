as yet unclassified
renderContentOn: html
	self renderValidationResults: validationResult on: html.
	self renderPillarPreviewDialogOn: html.

	html form: [
		html label: 'Title of module'.
		html textInput on: #title of: model.
		html break.
		html label: [
			html checkbox on: #isExam of: model.
			html space.
			html text: 'Is only for exam (not public searchable)'].
		html label: [
			html checkbox on: #isPrivate of: model.
			html space.
			html text: 'Is private'].
		html label: [
			html checkbox on: #allowIgnoreTasks of: model.
			html space.
			html text: 'Allow ignoring of tasks'].
		html break.
		html label: 'Level (A1-B2, ...)'.
		html textInput on: #exerciseLevel of: model.
		html break.
		html label: 'Image (Main image, displayed in search results etc.)'.
		html select
			beOptional;
			list: self wd imageAssets;
			labels: [:each | each displayName];
			on: #imageAsset of: model.
		html break.
		html label: 'Authors'.
		html multiSelect
			list: self wd authors sortedBySortKey;
			labels: [:each | each displayName];
			on: #authorUsers of: model.
		html break.
		html label: 'Co-Authors'.
		html multiSelect
			list: self wd authors sortedBySortKey;
			labels: [:each | each displayName];
			on: #coAuthorUsers of: model.
		html break.
		html label: 'Duration'.
		html select
			labels: [:each | each displayName];
			list: (VIADurationTag allForWebsite: self website);
			on: #durationTag of: model classification.
		html break.
		html label: 'Footnotes (Use Pillar-Syntax for formatting)'.
		self renderPillarInput: #footnotesPillarString of: model on: html.
		html break.
		html label: 'Remarks for teachers (Use Pillar-Syntax for formatting)'.
		self renderPillarInput: #teacherNotesPillarString of: model on: html.

		self renderGeoInformationOn: html.

		self renderFormButtonsOn: html].
	
