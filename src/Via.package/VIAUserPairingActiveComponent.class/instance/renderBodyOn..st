rendering
renderBodyOn: html
	| id |
	id := html nextId.
	
	self isPaired
		ifTrue: [
			self renderStatusOn: html.
"			self renderExistingPairingOn: html."
		]
		ifFalse: [
			html div class: 'codeInputContainer'; with: [
				html div class: 'explanation'; t: 'userPairing:pleaseEnterCode'.
				html textInput
					id: id;
					class: 'codeInput';
					placeholder: '***';
					noAutocapitalize;
					noAutocorrect;
					script: ( html jQuery this triggerFocus );
					onInput: ((html jQuery ajax
						callback: [ :codeString | self tryPairByCode: codeString ]
						value: (JSStream on: ('$(this).val()'));
						onSuccess: ((html jQuery id: bodyId) load html: [ :h | self renderBodyOn: h ])
					) condition: (JSStream on: '$(this).val().length == 3') ).
			].

			lastPairedUser ifNotNil: [
				html div class: 'uk-margin'; with: [
					html anchor
						callback: [ self tryAutoPair ];
						with: [
							html t: 'userPairing:tryAutoPairWith_user_' p: { #user-> lastPairedUser firstName}
						] 
				]
			].

"			self
				renderAjaxInterval: 10000
				on: html
				callback: [self tryAutoPair]
				html: [ :h | self renderStatusOn: h ]."

"			self renderStatusOn: html."
		].
	
	self renderCancelOn: html