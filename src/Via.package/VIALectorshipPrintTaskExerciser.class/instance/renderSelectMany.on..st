rendering-visitor
renderSelectMany: aSelectManyInput on: html

	html div
		class: 'selectMany';
		with: [
			aSelectManyInput choices ifNotBlank: [:sc |
				html unorderedList class: 'selectManyChoices'; with: [
					sc do: [:choice |
						html listItem
							class: 'solution' if: (aSelectManyInput solutions includes: choice);
							with: [
								choice acceptRenderingVisitor: self on: html.
								"html pillarString: choice"]].
					]].
		self renderFootnoteSymbolOfBrick: aSelectManyInput on: html.
		]