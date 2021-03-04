rendering-visitor
renderSelectPoints: aSelectPointsInput on: html
	self renderInputEditorFor: aSelectPointsInput on: html with: [
"		html heading level5; with: [
			html text: 'Self evaluation']."
		html span: 'Hint: '.
		html textArea
			on: #hintText of: aSelectPointsInput.
		html break; break.
		html div: 'Choices (prefixed with points, e.g. "5:blabla" )'.
		html textArea on: #choicesString of: aSelectPointsInput.
]