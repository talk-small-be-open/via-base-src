rendering-visitor
renderMapPairs: aMapPairs on: html
	html div class: 'inputEditor'; with: [

"		html heading level2; with: 'Map pairs'."
"		html div: 'Pairs:'."
		aMapPairs pairInputs withIndexDo: [:each :index |
			html div: [
				html text: index asString.
				html text: '. '.
				html text: 'Pair'.
				html anchor
					class: 'u-pull-right';
					callback: [aMapPairs removePair: each];
					with: [ html iconDelete; space; text: 'Remove this pair']].
			each acceptRenderingVisitor: self on: html.
			].
		html div class: 'topBuffer'; with: [
			html submitButton
				callback: [aMapPairs addNewPair];
				with: '+ Add pair']]