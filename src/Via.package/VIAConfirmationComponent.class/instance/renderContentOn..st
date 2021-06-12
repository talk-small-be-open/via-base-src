rendering
renderContentOn: html
	html paragraph with: [html t: messageToConfirm].
	componentToConfirm ifNotNil: [ html render: componentToConfirm ].
	html form: [
		html ukSubmitButton
			callback: [self confirm];
			with: [html sT: self confirmationText].
		html ukSubmitButton
			callback: [self reject];
			with: [html sT: self cancelText]]