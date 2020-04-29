rendering-visitor
renderSelectMany: aSelectManyInput on: html
	| orderedChoices |

	orderedChoices := exercise propertyAt: #orderedChoices of: aSelectManyInput.

	html div
		class: 'selectMany';
		with: [
			orderedChoices ifNotBlank: [:sc |
				html unorderedList class: 'selectManyChoices'; with: [
					sc do: [:choice |
						html listItem
							class: 'solution' if: (aSelectManyInput solutions includes: choice);
							with: [
								html span class: 'listItemIcon'; with: [html ukIcon: 'square-o'].
								html pillarString: choice]].
					]].
		self renderFootnoteSymbolOfBrick: aSelectManyInput on: html.
		]