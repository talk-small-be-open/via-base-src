rendering
renderRandomizationPageOn: html
	playerNumber = 1
		ifTrue: [
			self ensureRandomCode.
			html paragraph t: 'tandemSequence:forwardThisRandomCode'.
			html div class: 'randomCode'; with: randomCode.
			html ukAnchorButton
				callback: [ self start ];
				t: 'tandemSequence:okStartRandom'.
			^self.
		]
		ifFalse: [
			self randomCodes do: [ :each |
				html anchor
					class: 'randomCode';
					callback: [ self startWithRandomCode: each ];
					with: each asString ]
		]