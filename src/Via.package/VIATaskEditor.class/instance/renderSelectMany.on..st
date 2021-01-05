rendering-visitor
renderSelectMany: aSelectManyInput on: html
	html div class: 'inputEditor'; with: [
"		html heading level2; with: [
			html text: 'Multiple choice (multiple answers): '.
			html text: aSelectManyInput code]."
		aSelectManyInput code ifNotBlank: [ :c | html heading level2; with: c ].
		html label: 'Hint: '.
		html textArea
			on: #hintText of: aSelectManyInput.
		html label: 'Choices (prefixed * = answer, -- = group border)'.
		html textArea on: #choicesString of: aSelectManyInput.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #shuffleChoices of: aSelectManyInput.
					html text: ' Shuffle choices'].
			].
			html skColumnWidth: 'three' with: [
				html label: 'Columns (empty = auto):'.
				html textInput
					on: #columns of: aSelectManyInput.
			]
		].
		
	]