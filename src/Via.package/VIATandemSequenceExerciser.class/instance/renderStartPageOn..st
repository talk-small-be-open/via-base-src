rendering
renderStartPageOn: html
	html paragraph class: 'uk-margin-bottom'; with: [
		html t: 'tandemSequence:pleaseChoosePlayer'].

	html ukGrid class: 'uk-grid-small uk-child-width-1-1 uk-child-width-1-2@l'; with: [
		html div: [
			html anchor
				callback: [ self iamPlayerNumber: 1 ];
				class: 'chooser player1 uk-link-reset';
				with: [
					html iconQuestion. 
					html span class: 'playerLabel'; with: [ html t: 'tandemSequence:player1' ].
					html div: [ html t: 'tandemSequence:instructionsForPlayer1' ].
					html span class: 'button'; t: 'tandemSequence:go' ]
		].
		html div: [
			html anchor
				callback: [ self iamPlayerNumber: 2 ];
				class: 'chooser player2 uk-link-reset';
				with: [
					html iconAnswer.
					html span class: 'playerLabel'; with: [ html t: 'tandemSequence:player2' ].
					html div: [ html t: 'tandemSequence:instructionsForPlayer2' ].
					html span class: 'button'; t: 'tandemSequence:go' ]
				]
		]