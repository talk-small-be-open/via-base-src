as yet unclassified
renderContentOn: html
	self renderValidationResults: validationResult on: html.
	self renderPillarPreviewDialogOn: html.
	html form: [
		html label: 'Title'.
		html textInput on: #title of: model.
		html break.
		html label: 'Public comment & Copyright'.
		self renderPillarInput: #comment of: model on: html.
		html label: 'Internal Comment'.
		self renderPillarInput: #internalComment of: model on: html.
		self renderFormButtonsOn: html]