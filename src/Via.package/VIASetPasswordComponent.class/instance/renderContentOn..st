rendering
renderContentOn: html
	html heading t: 'setPassword:header'.
	validationResult ifNotBlank: [
		html ukAlertDanger t: validationResult].
	html paragraph t: 'setPassword:info'.
	html form noAutocomplete; with: [
		html table: [
			html tableRow: [
				html tableData t: 'setPassword:password'.
				html tableData: [
					html passwordInput
"						id: (id1 := html nextId);"
						script: (html jQuery this triggerFocus);
						callback: [:value | self password: value];
						with: nil]].
			html tableRow: [
				html tableData t: 'setPassword:passwordConfirmation'.
				html tableData: [
					html passwordInput
"						id: (id2 := html nextId);"
						callback: [:value | self passwordConfirmation: value];
						with: nil]]].
			html div class: 'topBuffer'; with: [
				html ukSubmitButton
					callback: [self ok];
					t: #ok]].
	
"	html script: (self jsForStrengthCheckerId: id1 confirmationId: id2)"