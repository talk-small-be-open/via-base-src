rendering-visitor
renderSelectPoints: aSelectPointsInput on: html
	| answerValue  |

	answerValue := exercise answerOf: aSelectPointsInput.

	html div
		class: 'selectPointsInput';
		with: [
			aSelectPointsInput choices ifNotEmpty: [:cs |
				html unorderedList class: 'selectPointsChoices'; with: [
					cs do: [:each | 
						html listItem: [
							html span class: 'listItemIcon'; with: [html ukIcon: 'circle-o'].
							html span: (aSelectPointsInput labelForChoice: each)]]]].
		self renderFootnoteSymbolOfBrick: aSelectPointsInput on: html.

	]