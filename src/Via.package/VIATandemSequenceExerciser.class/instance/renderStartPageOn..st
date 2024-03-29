rendering
renderStartPageOn: html
"	html paragraph class: 'uk-margin-bottom'; with: [
		html t: 'tandemSequence:pleaseChoosePlayer']."

	html hintBox: 'tandem:seeTutorial'.
"	html ifT: 'tandemSequence:seeTutorial' then: [ :yield |
		html paragraph class: 'uk-margin-bottom'; with: [
			yield value ] ]."

	html ukGrid
		class: 'uk-grid-small uk-child-width-1-1 uk-child-width-1-2@l';
		a: 'uk-height-match' p: '> div > a';
		with: [
			html div: [
				html anchor
					callback: [ self iamPlayerNumber: 1; goAhead ];
					class: 'chooser player1 uk-link-reset';
					with: [
						html div t: 'tandemSequence:iAm'.
						self renderPlayerLetter: 'A' on: html.
						html div: [
							html pillarSnippet: taskBrick startPillarPlayerA ].
						html span class: 'buttonish'; t: 'tandemSequence:go' ]
			].
			html div: [
				html anchor
					callback: [ self iamPlayerNumber: 2; goAhead ];
					class: 'chooser player2 uk-link-reset';
					with: [
						html div t: 'tandemSequence:iAm'.
						self renderPlayerLetter: 'B' on: html.
						html div: [
							html pillarSnippet: taskBrick startPillarPlayerB ].
						html span class: 'buttonish'; t: 'tandemSequence:go' ]
					]
			]