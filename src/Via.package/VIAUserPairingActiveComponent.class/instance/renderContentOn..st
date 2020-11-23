rendering
renderContentOn: html
	self isPaired ifFalse: [
		html form: [
			html div class: 'explanation'; t:'userPairing:pleaseEnterCode'.
			html textInput
				class: 'codeInput';
				script: ( html jQuery this triggerFocus );
				callback: [ :value | self tryPairByCode: value ].
			html space.
			html submitButton t: 'userPairing:pairNow'
		].
	].

	self renderStatusOn: html.

