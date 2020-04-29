rules creation
validateAcceptanceOfTermsAndConditions
	(self validateTrue: [object isAcceptedTermsAndConditions])
		errorMessage: #userRegistrationValidator:mustAcceptTermsAndConditions