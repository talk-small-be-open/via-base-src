rendering-visitor
renderTextMemo: aTextMemo on: html
	self renderInputEditorFor: aTextMemo on: html with: [
		html skRow: [
			html skColumnWidth: 'four' with: [
				html label class: 'inline'; with: 'Hint: '.
				html numberInput
					on: #maxCharCount of: aTextMemo ].
		].

		html textArea on: #infoPillar of: aTextMemo.
	]