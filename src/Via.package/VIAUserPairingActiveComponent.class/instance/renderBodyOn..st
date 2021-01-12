rendering
renderBodyOn: html
	| id |
	id := html nextId.
	
	self isPaired ifFalse: [
		html div class: 'codeInputContainer'; with: [
			html div class: 'explanation'; t:'userPairing:pleaseEnterCode'.
			html textInput
				id: id;
				class: 'codeInput';
				noAutocapitalize;
				noAutocorrect;
				script: ( html jQuery this triggerFocus );
				onInput: ((html jQuery ajax
					callback: [ :codeString | self tryPairByCode: codeString ]
					value: (JSStream on: ('$(this).val()'));
					onSuccess: ((html jQuery id: bodyId) load html: [ :h | self renderBodyOn: h ])
				) condition: (JSStream on: '$(this).val().length == 3') ).
		].
	].

	self renderStatusOn: html.
