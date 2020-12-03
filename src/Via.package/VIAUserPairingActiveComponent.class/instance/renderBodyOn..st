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
				script: ( html jQuery this triggerFocus ).
"				callback: [ :value | self tryPairByCode: value ]."
			html space.
"			html submitButton t: 'userPairing:pairNow'."
			html span
				onClick: (html jQuery ajax
					callback: [ :codeString | self tryPairByCode: codeString ]
					value: (JSStream on: ('$("#', id, '").val()'));
					onSuccess: ((html jQuery id: bodyId) load html: [ :h | self renderBodyOn: h ])
				);
				t: 'userPairing:pairNow'
		].
	].

	self renderStatusOn: html.
