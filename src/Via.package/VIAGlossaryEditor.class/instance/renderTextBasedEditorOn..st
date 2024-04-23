rendering
renderTextBasedEditorOn: html
	html span class: 'pull-right'; with: [
		html modalTitle: 'Syntax for glossary' anchor: 'Syntax help' with: [
			html paragraph: 'Entry titles begin with "===", then the description in Pillar syntax. Optionally prepend a pillar text section separated by "---" for more syntax explanation, instead of the plain title.  Internal reference links are possible with the GLO keyword (see example), use plain lowercase title without character attributes. Entries without a description will be section titles (e.g. A, B, G). '.
			html strong: 'Example:'.
			html preformatted: '=== A
=== Alpha
Erster Buchstabe des *griechischen>GLO:griechenland* Alphabets.
=== B
=== Beta
Beta (__nicht__ Betha)
---
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
