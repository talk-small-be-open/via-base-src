rendering-visitor
renderMapPairs: aMapPairs on: html
	html div class: 'inputEditor'; with: [

		html heading level2; with: 'Map pairs'.
		html div: 'Pairs:'.
		aMapPairs pairInputs do: [:each |
			each acceptRenderingVisitor: self on: html.
			html anchor
				callback: [aMapPairs removePair: each];
				with: 'Remove this pair'
			].
		html div class: 'topBuffer'; with: [
			html ukSubmitButton
				callback: [aMapPairs addNewPair];
				with: '+ Add pair']]