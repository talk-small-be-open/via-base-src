rendering
renderContentOn: html
	html paragraph with: [html t: messageToConfirm].
	html form: [
		html ukSubmitButton
			callback: [self confirm];
			with: [html t: self confirmationText].
		html space.
		html ukSubmitButton
			callback: [self reject];
			with: [html t: self cancelText]]