rendering-visitor
renderGlossary: aGlossary on: html
	self renderInputEditorFor: aGlossary on: html with: [
	"		html skRow: [
				html skColumnWidth: 'four' with: [
					html label class: 'inline'; with: 'Max characters: '.
					html numberInput
						min: 1;
						on: #maxCharCount of: aTextMemo ].
			]."
		
		html skAnchorButton
			callback: [ self openGlossaryEditorFor: aGlossary ];
			with: [
				html iconEdit; space.
				html text: 'Edit glossary ...' ].
				
		html label: 'Entries'.
		html div class: 'entries'; with: [
			aGlossary entries do: [ :each |
				html span class: 'entryTitle'; with: each title ] ].
		
	]