as yet unclassified
signalIfInvalid
	self isValid ifFalse: [
		(VIAValidationError validationResult: self) signal]