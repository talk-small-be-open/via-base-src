actions
ok
	self validate.
	validationResult = #ok ifTrue: [
		self answer: password.
		password := nil.
		passwordConfirmation := nil]