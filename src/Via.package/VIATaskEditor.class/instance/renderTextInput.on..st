rendering-visitor
renderTextInput: aPlaceholder on: html
	self renderInputEditorFor: aPlaceholder on: html with: [
		aPlaceholder code ifNotBlank: [ :c |
			html heading level2; with: [
				html text: 'Text input: '.
				html text: c ] ].
		html label: 'Hint: '.
		html textArea
			on: #hintText of: aPlaceholder.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #autoShowHint of: aPlaceholder.
					html text: ' Auto show hint']].
			html skColumnWidth: 'four' with: [
				html label: [
					html checkbox on: #showCharsCount of: aPlaceholder.
					html text: ' Show character placeholders']].
			html skColumnWidth: 'five' with: [
				html label: [
					html checkbox on: #offerBlankChoice of: aPlaceholder.
					html text: ' Offer blank']]
		].
		
		html label: 'Correct answers (Each line = one correct answer. Use "BLANK" as empty answer)'.
		html textArea on: #solutionsString of: aPlaceholder.
	]