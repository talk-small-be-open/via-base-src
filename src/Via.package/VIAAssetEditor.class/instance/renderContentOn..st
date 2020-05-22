as yet unclassified
renderContentOn: html
	self renderValidationResults: validationResult on: html.
	html form: [
		html label: 'Title'.
		html textInput on: #title of: model.
		html break.
		html label: 'Public comment & Copyright'.
		html textArea on: #comment of: model.
		html break.
		html label: 'Internal Comment'.
		html textArea on: #internalComment of: model.
		html break.
		self renderFormButtonsOn: html]