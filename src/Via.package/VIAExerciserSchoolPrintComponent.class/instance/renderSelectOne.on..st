rendering-visitor
renderSelectOne: aSelectOneInput on: html
	| orderedChoices |

	orderedChoices := exercise propertyAt: #orderedChoices of: aSelectOneInput.

	html span class: 'selectOneInput'; with: [

		orderedChoices ifNotNil: [
			html unorderedList class: 'selectOneChoices'; with: [
				orderedChoices do: [:each |
					html listItem
						class: 'solution' if: (aSelectOneInput solutions includes: each);
						with: [
							html span class: 'listItemIcon'; with: [html ukIcon: 'circle-o'].
							html span class: 'listItemContent'; with: each].
				]]].

		self renderFootnoteSymbolOfBrick: aSelectOneInput on: html].