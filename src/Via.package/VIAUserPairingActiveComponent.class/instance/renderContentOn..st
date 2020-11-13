rendering
renderContentOn: html
	html form: [ 
		html textInput
			callback: [ :value | self tryPairByCode: value ].
		html submitButton with: 'Pair now!'
	].

	self renderStatusOn: html.

	html anchorButton
		callback: [ self close ];
		with: 'Close'