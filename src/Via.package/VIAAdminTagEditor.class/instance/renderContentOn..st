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
		html label with: [
			html checkbox on: #useIcon of: model.
			html space.
			html span: 'Enable icon' ].
		
		self renderFormButtonsOn: html.

	]