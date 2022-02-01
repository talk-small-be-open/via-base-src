rendering-visitor
renderSelectOne: aSelectOneInput on: html
	self renderInputEditorFor: aSelectOneInput on: html with: [
		aSelectOneInput code ifNotBlank: [ :c |
			html heading level2; with: [
				html text: 'Select one: '.
				html text: c] ].
"		html heading level5; with: [
			html text: 'Multiple choice (single answer): '.
			html text: aSelectOneInput code]."
		html label: 'Hint: '.
		html textArea
			on: #hintText of: aSelectOneInput.
		html label: 'Choices (prefixed * = answer, -- = group border, "BLANK" = empty answer)'.
		html textArea on: #choicesString of: aSelectOneInput.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #shuffleChoices of: aSelectOneInput.
					html text: ' Shuffle choices']].
			html skColumnWidth: 'three' with: [
				html label: 'Columns (empty = auto):'.
				html textInput
					on: #columns of: aSelectOneInput.
			].
			html skColumnWidth: 'three' with: [
				html label: 'Style: '.
				html select
					list: #(dropdown radio);
					on: #style of: aSelectOneInput.
			].
		].
			
	]