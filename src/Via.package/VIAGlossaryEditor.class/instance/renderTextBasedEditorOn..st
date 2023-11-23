rendering
renderTextBasedEditorOn: html
	html span class: 'pull-right'; with: [
		html modalTitle: 'Syntax for glossary' anchor: 'Syntax help' with: [
			html paragraph: 'Entry titles begin with "===", then the description in Pillar syntax. Internal reference links are possible.'.
			html strong: 'Example:'.
			html preformatted: '=== A
=== Alpha
Erster Buchstabe des *griechischen>GLO:Griechenland* Alphabets.
=== B
=== Beta
Zweiter griechischer Buchstabe. Auch verwendet für:
- Software, die noch nicht ganz fertig ist
- Ionisierende Strahlung
=== G
=== Griechenland
Heimat von Zeus, ''''dem'''' Gott
'.
	]].

	html pillarSyntaxIndicator.

	html div class: 'largeTextareaContainer'; with: [
		html textArea
			class: 'newEntriesInput';
			on: #glossaryString of: self.
	].
