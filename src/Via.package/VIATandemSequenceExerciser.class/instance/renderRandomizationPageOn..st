rendering
renderRandomizationPageOn: html
	playerNumber = 1
		ifTrue: [
			self renderInstructionsOn: html.
			self ensureRandomCode.
			html paragraph: [html t: 'tandemSequence:forwardThisRandomCode'].
			html div class: 'randomCode'; with: randomCode.
			html ukAnchorButton
				callback: [ self start ];
				t: 'tandemSequence:okStartRandom'.
			^self.
		]
		ifFalse: [
			self renderInstructionsOn: html.
			html paragraph: [html t: 'tandemSequence:enterRandomCode'].
			html ukGrid class: 'uk-grid-small uk-child-width-1-6 uk-child-width-auto@l randomCodes'; with: [
				self randomCodes do: [ :each |
					html anchor
						class: 'randomCode';
						callback: [ self startWithRandomCode: each ];
						with: each asString]]
		]