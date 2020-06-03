rendering
renderFootnoteSymbol: aString on: html
	html span class: 'footnoteReference'; with: [
		html span class: 'seeAt'; with: [
			html t: 'via:seeAtFootnote'.
			html space].
		html span
			class: 'footnoteSymbol';
			with: [
				html text: '('.
				html text: aString.
				html text: ')'.
			]]