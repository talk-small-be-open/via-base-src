testing
isConfirmationMismatch
	^passwordConfirmation notNil and: [self isConfirmed not]