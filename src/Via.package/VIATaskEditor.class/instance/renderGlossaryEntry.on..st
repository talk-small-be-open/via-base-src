rendering-visitor
renderGlossaryEntry: aGlossaryEntry on: html
	self renderInputEditorFor: aGlossaryEntry on: html with: [
		html div: 'TODO or obsolete? we have a dedicated editor for the whole glossary'
	]