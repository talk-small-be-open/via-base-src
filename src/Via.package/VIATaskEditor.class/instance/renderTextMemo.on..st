rendering-visitor
renderTextMemo: aTextMemo on: html
	self renderInputEditorFor: aTextMemo on: html with: [
		html skRow: [
			html skColumnWidth: 'four' with: [
				html label class: 'inline'; with: 'Max characters: '.
				html numberInput
					min: 1;
					on: #maxCharCount of: aTextMemo ].
		].

		html label: 'Info text (optional)'.
		aTextMemo infoPillar acceptRenderingVisitor: self on: html.
		
	]