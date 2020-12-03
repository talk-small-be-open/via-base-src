rendering
renderPlayerLetter: aString on: html
	html span class: 'playerLabel'; with: [
		html span class: 'playerChar'; with: aString].
