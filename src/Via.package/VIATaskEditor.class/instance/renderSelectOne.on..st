rendering-visitor
renderSelectOne: aSelectOneInput on: html
	html div class: 'inputEditor'; with: [
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
		html label: 'Choices (prefixed * = answer, -- = group border)'.
		html textArea on: #choicesString of: aSelectOneInput.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #shuffleChoices of: aSelectOneInput.
					html text: ' Shuffle choices']].
			html skColumnWidth: 'three' with: [
				html label: 'Style: '.
				html select
					list: #(dropdown radio);
					on: #style of: aSelectOneInput.
		]].
			
	]