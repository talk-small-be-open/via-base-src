rendering-visitor
renderTextInput: aPlaceholder on: html
	html div class: 'inputEditor'; with: [
		html heading level5; with: [
			html text: 'Cloze: '.
			html text: aPlaceholder code].
		html span: 'Hint: '.
		html textArea
			on: #hintText of: aPlaceholder.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #autoShowHint of: aPlaceholder.
					html text: 'Auto show hint']].
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #showCharsCount of: aPlaceholder.
					html text: 'Show characters placeholders']]].
		
		html div: 'Correct answers (Each line)'.
		html textArea on: #solutionsString of: aPlaceholder.
"		html break.
		html div: 'Interner Kommentar'.
		html textArea
			on: #editorComment	of: aPlaceholder.
"	]