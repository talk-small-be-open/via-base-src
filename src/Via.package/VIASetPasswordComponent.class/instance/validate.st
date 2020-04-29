validation
validate
	validationResult := nil.

	password ifEmpty: [
		validationResult := 'setPassword:error:empty'. ^self].

	password size < 6 ifTrue: [
		validationResult := 'setPassword:error:format'. ^self].
	
	self isConfirmationMismatch ifTrue: [
		validationResult := 'setPassword:error:confirmationMismatch'. ^self].
	
	
	validationResult ifNil: [validationResult := #ok]