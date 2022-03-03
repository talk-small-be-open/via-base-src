rendering-visitor
renderSelectMany: aSelectManyInput on: html
	| details |
	details := self brickDetails: aSelectManyInput.

	self renderAnalyticsBoxOf: aSelectManyInput showCorrectness: false on: html with: [
		html div
			class: 'selectMany';
			with: [
				aSelectManyInput choices ifNotBlank: [:sc |
					sc do: [:choice |
						| wrong isSolution |
						wrong := details at: choice.
						isSolution := aSelectManyInput isSolution: choice.
						
						html label: [
							html iconUnchecked.
							html space.
							self renderDetailsTricolorWrong: wrong on: html with: [
								html span: [
									choice acceptRenderingVisitor: self on: html.
									"html pillarString: choice"]].
							html span class: 'uk-text-muted'; with: [
								isSolution ifTrue: [html iconCorrect] ifFalse: [html iconWrong].
							].

						html break]
					]
				]
	]]