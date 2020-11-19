rendering
renderContentOn: html
	html form: [ 
		html textInput
			class: 'codeInput';
			callback: [ :value | self tryPairByCode: value ].
		html space.
		html submitButton t: 'userPairing:pairNow'
	].

	self renderStatusOn: html.

