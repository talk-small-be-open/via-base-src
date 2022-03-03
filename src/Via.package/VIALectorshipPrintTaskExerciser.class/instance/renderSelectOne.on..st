rendering-visitor
renderSelectOne: aSelectOneInput on: html

	html span class: 'selectOneInput'; with: [

		aSelectOneInput choices ifNotNil: [
			html unorderedList class: 'selectOneChoices'; with: [
				aSelectOneInput choices do: [:each |
					html listItem
						class: 'solution' if: (aSelectOneInput solutions includes: each);
						with: [
							each acceptRenderingVisitor: self on: html].
				]]].

		self renderFootnoteSymbolOfBrick: aSelectOneInput on: html]