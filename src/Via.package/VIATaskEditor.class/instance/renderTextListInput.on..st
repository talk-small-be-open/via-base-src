rendering-visitor
renderTextListInput: aTextListInput on: html
	self renderInputEditorFor: aTextListInput on: html with: [
		html skRow: [
			html skColumnWidth: 'four' with: [
				html label class: 'inline'; with: 'Hint: '.
				html textArea
					class: 'hint';
					on: #hintText of: aTextListInput ].
		].

		html label: 'Correct answers (Each line = one correct answer)'.
		html textArea on: #solutionsString of: aTextListInput.

		html label: 'Given fragments (Optional)'.
		html textArea on: #hintFragmentsString of: aTextListInput.

	]