rendering
renderCancelOn: html
	html div class: 'uk-margin'; with: [
		html anchor
			callback: [ self cancel ];
			t: 'userPairing:cancel']