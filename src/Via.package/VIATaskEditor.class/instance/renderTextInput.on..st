rendering-visitor
renderTextInput: aPlaceholder on: html
	html div class: 'inputEditor'; with: [
		aPlaceholder code ifNotBlank: [ :c | html heading level2; with: c ].
		html label: 'Hint: '.
		html textArea
			on: #hintText of: aPlaceholder.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #autoShowHint of: aPlaceholder.
					html text: ' Auto show hint']].
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #showCharsCount of: aPlaceholder.
					html text: ' Show characters placeholders']]].
		
		html label: 'Correct answers (Each line = one correct answer)'.
		html textArea on: #solutionsString of: aPlaceholder.
	]