rules creation
validatePasswordConfirmation
	(self validateTrue: [object password = object passwordConfirmation])
		errorMessage: #passwordValidator:confirmationMismatch