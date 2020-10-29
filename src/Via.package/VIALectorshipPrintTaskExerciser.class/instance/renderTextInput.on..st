rendering-visitor
renderTextInput: aPlaceholder on: html

	html span
		class: 'clozeTextPlaceholder';
		with: [
			aPlaceholder solutions ifNotBlank: [:col |
				col do: [ :each |
					html text: each ] separatedBy: [ html text: ' | '].
	]].
	
	self renderFootnoteSymbolOfBrick: aPlaceholder on: html