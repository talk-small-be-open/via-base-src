rendering-visitor
renderTextMemo: aTextMemo on: html
	self renderInputEditorFor: aTextMemo on: html with: [
		html skRow: [
			html skColumnWidth: 'four' with: [
				html label class: 'inline'; with: 'Max characters: '.
				html break.
				html numberInput
					min: 1;
					on: #maxCharCount of: aTextMemo ].
			html skColumnWidth: 'four' with: [
				html label class: 'inline'; with: 'Let teacher correct, max points: '.
				html break.
				html numberInput
					min: 1;
					on: #maxTeacherPoints of: aTextMemo ].
		].

		html label: 'Info text (optional)'.
		aTextMemo infoPillar acceptRenderingVisitor: self on: html.
		
	]