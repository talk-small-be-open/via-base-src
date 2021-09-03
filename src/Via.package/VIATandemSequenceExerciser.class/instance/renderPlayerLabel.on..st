rendering
renderPlayerLabel: aPlayerNumber on: html
	html span class: 'playerLabel'; with: [
		html span class: 'playerLabelContent'; with: [

			self renderPlayerLetter: (self playerLetter: aPlayerNumber) on: html.

			"If myself"
			aPlayerNumber = self playerNumber ifTrue: [
				html span class: 'playerIsMe'; sT: 'tandemSequence:me' ]
		]]