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

		html label: [ html text: 'Given text pieces, each line (optional)'. html pillarSyntaxIndicator ].
		html textArea on: #hintFragmentsString of: aTextListInput.
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #isWholeWordsOnly of: aTextListInput.
					html text: ' Whole words only'].
			].
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #withTypingAssistant of: aTextListInput.
					html text: ' Enable typing assistant'].
			].
		].


		html label: 'Correct answers (Each line = one correct answer)'.
		html textArea on: #solutionsString of: aTextListInput.
		
		html skRow: [
			html skColumnWidth: 'three' with: [
				html strong: 'Fixed number of solution lines (empty = auto): '.
				html numberInput
					min: 1;
					on: #maxSolutionsCount of: aTextListInput.
			]
		].
		

	]