rendering
renderContentOn: html
	html heading level3; with: 'Tag bearbeiten'.
	html form: [
		html label: 'Text'.
		html textInput on: #text of: model.
		html label: 'Code (CAREFUL!)'.
		html textInput on: #code of: model.
		html label: 'Gleichwertige Varianten (zeilengetrennt)'.
		html textArea on: #textVariantsString of: model.
		
		self renderFormButtonsOn: html.

	]