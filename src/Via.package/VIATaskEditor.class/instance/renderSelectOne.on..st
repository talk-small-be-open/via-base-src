rendering-visitor
renderSelectOne: aSelectOneInput on: html
	html div class: 'inputEditor'; with: [
		html heading level5; with: [
			html text: 'Multiple choice (single answer): '.
			html text: aSelectOneInput code].
		html span: 'Hint: '.
		html textArea
			on: #hintText of: aSelectOneInput.
		html break; break.
		html div: 'Choices (prefixed * = answer)'.
		html textArea on: #choicesString of: aSelectOneInput.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html span: 'Style: '.
				html select
					list: #(dropdown radio);
					on: #style of: aSelectOneInput].
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #shuffleChoices of: aSelectOneInput.
					html text: ' shuffle choices'].
		]].
			
	]