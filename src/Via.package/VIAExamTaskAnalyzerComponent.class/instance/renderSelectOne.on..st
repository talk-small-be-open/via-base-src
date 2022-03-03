rendering-visitor
renderSelectOne: aSelectOneInput on: html
	| details |
	details := self brickDetails: aSelectOneInput.

	self renderAnalyticsBoxOf: aSelectOneInput showCorrectness: false on: html with: [
		html div 
			class: 'selectOneInput';
			with: [
				aSelectOneInput choices ifNotBlank: [:cs |
					cs do: [:choice |
						| percent isSolution |
						percent := details at: choice.
						isSolution := aSelectOneInput isSolution: choice.
						html div: [
							isSolution
								ifTrue: [
									self renderDetailsTricolorCorrect: percent on: html with: [
										choice acceptRenderingVisitor: self on: html.
										"html pillarString: choice"
									].
								]
								ifFalse: [
									self renderDetailsTricolorWrong: percent on: html with: [
										choice acceptRenderingVisitor: self on: html.
										"html pillarString: choice"
									].
								].
							
							html span class: 'uk-text-muted'; with: [
								isSolution ifTrue: [html iconCorrect] ifFalse: [html iconWrong].
						].
					]
				]
			]]]