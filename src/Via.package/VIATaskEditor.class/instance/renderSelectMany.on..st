rendering-visitor
renderSelectMany: aSelectManyInput on: html
	html div class: 'inputEditor'; with: [
		html heading level5; with: [
			html text: 'Multiple choice (multiple answers): '.
			html text: aSelectManyInput code].
		html span: 'Hint: '.
		html textArea
			on: #hintText of: aSelectManyInput.
		html break.
		html break.
		html div: 'Choices (prefixed * = answer)'.
		html textArea on: #choicesString of: aSelectManyInput.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #shuffleChoices of: aSelectManyInput.
					html text: ' shuffle choices'].
		]].
		
	]