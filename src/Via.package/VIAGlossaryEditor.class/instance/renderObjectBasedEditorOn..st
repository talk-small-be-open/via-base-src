rendering
renderObjectBasedEditorOn: html
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
		callback: [ :text | glossary addNewEntriesByString: text ].

	html label: 'Entries'.
	html table class: 'glossarEntries'; with: [
		glossary entries do: [ :each |
			html tableRow: [
				self renderEntry: each on: html ].
		]
	]