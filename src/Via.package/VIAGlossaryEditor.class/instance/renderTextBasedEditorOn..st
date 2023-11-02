rendering
renderTextBasedEditorOn: html
	html div class: 'largeTextareaContainer'; with: [
		html textArea
			class: 'newEntriesInput';
			placeholder: 'Example:
	=== A
	=== Alpha
	This is the first letter of the greek alphabet.
	=== B
	=== Beta
	This is the second letter.
	';
			on: #glossaryString of: self.
	]