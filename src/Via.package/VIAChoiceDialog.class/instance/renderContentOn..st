rendering
renderContentOn: html
	html div class: 'choiceDialog'; with: [
"		html paragraph: messageText."
		html form with: [
			html select
				list: self options;
				selected: self selection;
				labels: [:option | self labelForOption: option];
				beOptional;
				callback: [ :value | self selection: value ].
			html break.
			html submitButton
					callback: [self ok];
					t: 'general:ok'.
			html space.
			html anchorButton
				callback: [self cancel];
				t: 'general:cancel'
		].
	]