rendering
renderContentOn: html
	| textField |
	html div class: 'inputDialog'; with: [
		html paragraph: messageText.
		html form
			defaultAction: [ self answer: value ];
			with: [
				html div: [
					textField := self isMultiline
						ifTrue: [html textArea style: 'height:80px'; yourself]
						ifFalse: [html textInput].
					textField
						script: (html jQuery this triggerFocus);
						on: #value of: self.
					html break.
					html submitButton
						callback: [self answer: value];
						t: 'general:ok'.
					html space.
					html anchorButton
						callback: [self cancel];
						t: 'general:cancel']]]